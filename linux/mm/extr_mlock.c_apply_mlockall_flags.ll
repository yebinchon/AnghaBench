; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c_apply_mlockall_flags.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c_apply_mlockall_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32, i32, %struct.vm_area_struct* }

@VM_LOCKED_CLEAR_MASK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@MCL_FUTURE = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@MCL_ONFAULT = common dso_local global i32 0, align 4
@VM_LOCKONFAULT = common dso_local global i32 0, align 4
@MCL_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @apply_mlockall_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_mlockall_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @VM_LOCKED_CLEAR_MASK, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %7
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @MCL_FUTURE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  %19 = load i32, i32* @VM_LOCKED, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %19
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @MCL_ONFAULT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load i32, i32* @VM_LOCKONFAULT, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %30, %18
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @MCL_CURRENT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %96

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @MCL_CURRENT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32, i32* @VM_LOCKED, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @MCL_ONFAULT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* @VM_LOCKONFAULT, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %50
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %67, align 8
  store %struct.vm_area_struct* %68, %struct.vm_area_struct** %3, align 8
  br label %69

69:                                               ; preds = %91, %63
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %71 = icmp ne %struct.vm_area_struct* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @VM_LOCKED_CLEAR_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %83 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @mlock_fixup(%struct.vm_area_struct* %81, %struct.vm_area_struct** %4, i32 %84, i32 %87, i32 %88)
  %90 = call i32 (...) @cond_resched()
  br label %91

91:                                               ; preds = %72
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 3
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %93, align 8
  store %struct.vm_area_struct* %94, %struct.vm_area_struct** %3, align 8
  br label %69

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %95, %43
  ret i32 0
}

declare dso_local i32 @mlock_fixup(%struct.vm_area_struct*, %struct.vm_area_struct**, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
