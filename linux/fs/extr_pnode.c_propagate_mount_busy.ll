; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pnode.c_propagate_mount_busy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pnode.c_propagate_mount_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32, i32, %struct.mount* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @propagate_mount_busy(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mount*, %struct.mount** %4, align 8
  %12 = getelementptr inbounds %struct.mount, %struct.mount* %11, i32 0, i32 3
  %13 = load %struct.mount*, %struct.mount** %12, align 8
  store %struct.mount* %13, %struct.mount** %9, align 8
  %14 = load %struct.mount*, %struct.mount** %4, align 8
  %15 = load %struct.mount*, %struct.mount** %9, align 8
  %16 = icmp eq %struct.mount* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.mount*, %struct.mount** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @do_refcount_check(%struct.mount* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %76

21:                                               ; preds = %2
  %22 = load %struct.mount*, %struct.mount** %4, align 8
  %23 = getelementptr inbounds %struct.mount, %struct.mount* %22, i32 0, i32 0
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.mount*, %struct.mount** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @do_refcount_check(%struct.mount* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21
  store i32 1, i32* %3, align 4
  br label %76

32:                                               ; preds = %26
  %33 = load %struct.mount*, %struct.mount** %9, align 8
  %34 = load %struct.mount*, %struct.mount** %9, align 8
  %35 = call %struct.mount* @propagation_next(%struct.mount* %33, %struct.mount* %34)
  store %struct.mount* %35, %struct.mount** %6, align 8
  br label %36

36:                                               ; preds = %71, %32
  %37 = load %struct.mount*, %struct.mount** %6, align 8
  %38 = icmp ne %struct.mount* %37, null
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  %40 = load %struct.mount*, %struct.mount** %6, align 8
  %41 = getelementptr inbounds %struct.mount, %struct.mount* %40, i32 0, i32 2
  %42 = load %struct.mount*, %struct.mount** %4, align 8
  %43 = getelementptr inbounds %struct.mount, %struct.mount* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.mount* @__lookup_mnt(i32* %41, i32 %44)
  store %struct.mount* %45, %struct.mount** %7, align 8
  %46 = load %struct.mount*, %struct.mount** %7, align 8
  %47 = icmp ne %struct.mount* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %71

49:                                               ; preds = %39
  %50 = load %struct.mount*, %struct.mount** %7, align 8
  %51 = call %struct.mount* @find_topper(%struct.mount* %50)
  store %struct.mount* %51, %struct.mount** %8, align 8
  %52 = load %struct.mount*, %struct.mount** %8, align 8
  %53 = icmp ne %struct.mount* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %64

57:                                               ; preds = %49
  %58 = load %struct.mount*, %struct.mount** %7, align 8
  %59 = getelementptr inbounds %struct.mount, %struct.mount* %58, i32 0, i32 0
  %60 = call i32 @list_empty(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %71

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.mount*, %struct.mount** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @do_refcount_check(%struct.mount* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %76

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %62, %48
  %72 = load %struct.mount*, %struct.mount** %6, align 8
  %73 = load %struct.mount*, %struct.mount** %9, align 8
  %74 = call %struct.mount* @propagation_next(%struct.mount* %72, %struct.mount* %73)
  store %struct.mount* %74, %struct.mount** %6, align 8
  br label %36

75:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %69, %31, %17
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @do_refcount_check(%struct.mount*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.mount* @propagation_next(%struct.mount*, %struct.mount*) #1

declare dso_local %struct.mount* @__lookup_mnt(i32*, i32) #1

declare dso_local %struct.mount* @find_topper(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
