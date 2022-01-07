; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_dbg_check_heap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_dbg_check_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lpt_heap = type { i32, %struct.ubifs_lprops** }
%struct.ubifs_lprops = type { i32, i32, i64 }

@LPROPS_CAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"lprops %zx lp %zx lprops->lnum %d lp->lnum %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed cat %d hpos %d err %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_check_heap(%struct.ubifs_info* %0, %struct.ubifs_lpt_heap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_lpt_heap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_lprops*, align 8
  %13 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_lpt_heap* %1, %struct.ubifs_lpt_heap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = call i32 @dbg_is_chk_gen(%struct.ubifs_info* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %19 = call i32 @dbg_is_chk_lprops(%struct.ubifs_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %136

22:                                               ; preds = %17, %4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %118, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %6, align 8
  %26 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %121

29:                                               ; preds = %23
  %30 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %6, align 8
  %31 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %30, i32 0, i32 1
  %32 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %32, i64 %34
  %36 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %35, align 8
  store %struct.ubifs_lprops* %36, %struct.ubifs_lprops** %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %42 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LPROPS_CAT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %11, align 4
  br label %122

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %29
  %51 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %52 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 2, i32* %11, align 4
  br label %122

57:                                               ; preds = %50
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %59 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %60 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.ubifs_lprops* @ubifs_lpt_lookup(%struct.ubifs_info* %58, i64 %61)
  store %struct.ubifs_lprops* %62, %struct.ubifs_lprops** %13, align 8
  %63 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %64 = call i64 @IS_ERR(%struct.ubifs_lprops* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 3, i32* %11, align 4
  br label %122

67:                                               ; preds = %57
  %68 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %69 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %70 = icmp ne %struct.ubifs_lprops* %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %73 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %74 = ptrtoint %struct.ubifs_lprops* %73 to i64
  %75 = trunc i64 %74 to i32
  %76 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %77 = ptrtoint %struct.ubifs_lprops* %76 to i64
  %78 = trunc i64 %77 to i32
  %79 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %80 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %84 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (%struct.ubifs_info*, i8*, i32, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78, i32 %82, i64 %85)
  store i32 4, i32* %11, align 4
  br label %122

87:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %114, %87
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %6, align 8
  %94 = getelementptr inbounds %struct.ubifs_lpt_heap, %struct.ubifs_lpt_heap* %93, i32 0, i32 1
  %95 = load %struct.ubifs_lprops**, %struct.ubifs_lprops*** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ubifs_lprops*, %struct.ubifs_lprops** %95, i64 %97
  %99 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %98, align 8
  store %struct.ubifs_lprops* %99, %struct.ubifs_lprops** %13, align 8
  %100 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %101 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %102 = icmp eq %struct.ubifs_lprops* %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  store i32 5, i32* %11, align 4
  br label %122

104:                                              ; preds = %92
  %105 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %13, align 8
  %106 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %12, align 8
  %109 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  store i32 6, i32* %11, align 4
  br label %122

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %88

117:                                              ; preds = %88
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %23

121:                                              ; preds = %23
  br label %122

122:                                              ; preds = %121, %112, %103, %71, %66, %56, %48
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (%struct.ubifs_info*, i8*, i32, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %128, i32 %129)
  %131 = call i32 (...) @dump_stack()
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %133 = load %struct.ubifs_lpt_heap*, %struct.ubifs_lpt_heap** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ubifs_dump_heap(%struct.ubifs_info* %132, %struct.ubifs_lpt_heap* %133, i32 %134)
  br label %136

136:                                              ; preds = %21, %125, %122
  ret void
}

declare dso_local i32 @dbg_is_chk_gen(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_is_chk_lprops(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup(%struct.ubifs_info*, i64) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @ubifs_dump_heap(%struct.ubifs_info*, %struct.ubifs_lpt_heap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
