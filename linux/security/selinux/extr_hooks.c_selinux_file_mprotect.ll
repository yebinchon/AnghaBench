; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_file_mprotect.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_file_mprotect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.vm_area_struct = type { i32, i64, i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.cred = type { i32 }

@selinux_state = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@default_noexec = common dso_local global i64 0, align 8
@PROT_EXEC = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@PROCESS__EXECHEAP = common dso_local global i32 0, align 4
@PROCESS__EXECSTACK = common dso_local global i32 0, align 4
@FILE__EXECMOD = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i64)* @selinux_file_mprotect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_file_mprotect(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %11, %struct.cred** %8, align 8
  %12 = load %struct.cred*, %struct.cred** %8, align 8
  %13 = call i32 @cred_sid(%struct.cred* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @selinux_state, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i64, i64* @default_noexec, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %119

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @PROT_EXEC, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %119

26:                                               ; preds = %21
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VM_EXEC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %119, label %33

33:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 5
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %36, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %33
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 5
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %46, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @SECCLASS_PROCESS, align 4
  %57 = load i32, i32* @PROCESS__EXECHEAP, align 4
  %58 = call i32 @avc_has_perm(%struct.TYPE_5__* @selinux_state, i32 %54, i32 %55, i32 %56, i32 %57, i32* null)
  store i32 %58, i32* %10, align 4
  br label %113

59:                                               ; preds = %43, %33
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %59
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 5
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp sle i64 %67, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %64
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 5
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %77, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %74, %64
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %86 = call i64 @vma_is_stack_for_current(%struct.vm_area_struct* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84, %74
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @SECCLASS_PROCESS, align 4
  %92 = load i32, i32* @PROCESS__EXECSTACK, align 4
  %93 = call i32 @avc_has_perm(%struct.TYPE_5__* @selinux_state, i32 %89, i32 %90, i32 %91, i32 %92, i32* null)
  store i32 %93, i32* %10, align 4
  br label %112

94:                                               ; preds = %84, %59
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.cred*, %struct.cred** %8, align 8
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %107 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @FILE__EXECMOD, align 4
  %110 = call i32 @file_has_perm(%struct.cred* %105, i32 %108, i32 %109)
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %104, %99, %94
  br label %112

112:                                              ; preds = %111, %88
  br label %113

113:                                              ; preds = %112, %53
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %130

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %26, %21, %18
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %121 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %125 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @VM_SHARED, align 4
  %128 = and i32 %126, %127
  %129 = call i32 @file_map_prot_check(i32 %122, i64 %123, i32 %128)
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %119, %116
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @cred_sid(%struct.cred*) #1

declare dso_local i32 @avc_has_perm(%struct.TYPE_5__*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @vma_is_stack_for_current(%struct.vm_area_struct*) #1

declare dso_local i32 @file_has_perm(%struct.cred*, i32, i32) #1

declare dso_local i32 @file_map_prot_check(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
