; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_print_bad_pte.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_print_bad_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_9__*, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.address_space* }
%struct.TYPE_7__ = type { i32* }
%struct.address_space = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.page = type { i32 }

@print_bad_pte.resume = internal global i64 0, align 8
@print_bad_pte.nr_shown = internal global i64 0, align 8
@print_bad_pte.nr_unshown = internal global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"BUG: Bad page map: %lu messages suppressed\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"BUG: Bad page map in process %s  pte:%08llx pmd:%08llx\0A\00", align 1
@current = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"bad pte\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"addr:%px vm_flags:%08lx anon_vma:%px mapping:%px index:%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"file:%pD fault:%ps mmap:%ps readpage:%ps\0A\00", align 1
@TAINT_BAD_PAGE = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i32, %struct.page*)* @print_bad_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bad_pte(%struct.vm_area_struct* %0, i64 %1, i32 %2, %struct.page* %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.page* %3, %struct.page** %8, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32* @pgd_offset(i32 %17, i64 %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32* @p4d_offset(i32* %20, i64 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32* @pud_offset(i32* %23, i64 %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32* @pmd_offset(i32* %26, i64 %27)
  store i32* %28, i32** %12, align 8
  %29 = load i64, i64* @print_bad_pte.nr_shown, align 8
  %30 = icmp eq i64 %29, 60
  br i1 %30, label %31, label %46

31:                                               ; preds = %4
  %32 = load i32, i32* @jiffies, align 4
  %33 = load i64, i64* @print_bad_pte.resume, align 8
  %34 = call i64 @time_before(i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* @print_bad_pte.nr_unshown, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* @print_bad_pte.nr_unshown, align 8
  br label %146

39:                                               ; preds = %31
  %40 = load i64, i64* @print_bad_pte.nr_unshown, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* @print_bad_pte.nr_unshown, align 8
  %44 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %43)
  store i64 0, i64* @print_bad_pte.nr_unshown, align 8
  br label %45

45:                                               ; preds = %42, %39
  store i64 0, i64* @print_bad_pte.nr_shown, align 8
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i64, i64* @print_bad_pte.nr_shown, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* @print_bad_pte.nr_shown, align 8
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @jiffies, align 4
  %52 = load i32, i32* @HZ, align 4
  %53 = mul nsw i32 60, %52
  %54 = add nsw i32 %51, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* @print_bad_pte.resume, align 8
  br label %56

56:                                               ; preds = %50, %46
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = icmp ne %struct.TYPE_9__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.address_space*, %struct.address_space** %65, align 8
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %61
  %69 = phi %struct.address_space* [ %66, %61 ], [ null, %67 ]
  store %struct.address_space* %69, %struct.address_space** %13, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @linear_page_index(%struct.vm_area_struct* %70, i64 %71)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @pte_val(i32 %76)
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @pmd_val(i32 %79)
  %81 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %75, i64 %77, i64 %80)
  %82 = load %struct.page*, %struct.page** %8, align 8
  %83 = icmp ne %struct.page* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %68
  %85 = load %struct.page*, %struct.page** %8, align 8
  %86 = call i32 @dump_page(%struct.page* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %68
  %88 = load i64, i64* %6, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.address_space*, %struct.address_space** %13, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %89, i32 %92, i32 %95, %struct.address_space* %96, i32 %97)
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %100 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = icmp ne %struct.TYPE_6__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %87
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  br label %113

112:                                              ; preds = %87
  br label %113

113:                                              ; preds = %112, %106
  %114 = phi i32* [ %111, %106 ], [ null, %112 ]
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %116 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = icmp ne %struct.TYPE_9__* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %121 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  br label %128

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %119
  %129 = phi i32* [ %126, %119 ], [ null, %127 ]
  %130 = load %struct.address_space*, %struct.address_space** %13, align 8
  %131 = icmp ne %struct.address_space* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load %struct.address_space*, %struct.address_space** %13, align 8
  %134 = getelementptr inbounds %struct.address_space, %struct.address_space* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  br label %139

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %132
  %140 = phi i32* [ %137, %132 ], [ null, %138 ]
  %141 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_9__* %101, i32* %114, i32* %129, i32* %140)
  %142 = call i32 (...) @dump_stack()
  %143 = load i32, i32* @TAINT_BAD_PAGE, align 4
  %144 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %145 = call i32 @add_taint(i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %139, %36
  ret void
}

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @pr_alert(i8*, ...) #1

declare dso_local i32 @linear_page_index(%struct.vm_area_struct*, i64) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @pmd_val(i32) #1

declare dso_local i32 @dump_page(%struct.page*, i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @add_taint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
