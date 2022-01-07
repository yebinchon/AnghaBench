; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_free(%struct.devlink* %0) #0 {
  %2 = alloca %struct.devlink*, align 8
  store %struct.devlink* %0, %struct.devlink** %2, align 8
  %3 = load %struct.devlink*, %struct.devlink** %2, align 8
  %4 = getelementptr inbounds %struct.devlink, %struct.devlink* %3, i32 0, i32 10
  %5 = call i32 @mutex_destroy(i32* %4)
  %6 = load %struct.devlink*, %struct.devlink** %2, align 8
  %7 = getelementptr inbounds %struct.devlink, %struct.devlink* %6, i32 0, i32 9
  %8 = call i32 @mutex_destroy(i32* %7)
  %9 = load %struct.devlink*, %struct.devlink** %2, align 8
  %10 = getelementptr inbounds %struct.devlink, %struct.devlink* %9, i32 0, i32 8
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.devlink*, %struct.devlink** %2, align 8
  %17 = getelementptr inbounds %struct.devlink, %struct.devlink* %16, i32 0, i32 7
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.devlink*, %struct.devlink** %2, align 8
  %24 = getelementptr inbounds %struct.devlink, %struct.devlink* %23, i32 0, i32 6
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.devlink*, %struct.devlink** %2, align 8
  %31 = getelementptr inbounds %struct.devlink, %struct.devlink* %30, i32 0, i32 5
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.devlink*, %struct.devlink** %2, align 8
  %38 = getelementptr inbounds %struct.devlink, %struct.devlink* %37, i32 0, i32 4
  %39 = call i32 @list_empty(i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load %struct.devlink*, %struct.devlink** %2, align 8
  %45 = getelementptr inbounds %struct.devlink, %struct.devlink* %44, i32 0, i32 3
  %46 = call i32 @list_empty(i32* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.devlink*, %struct.devlink** %2, align 8
  %52 = getelementptr inbounds %struct.devlink, %struct.devlink* %51, i32 0, i32 2
  %53 = call i32 @list_empty(i32* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load %struct.devlink*, %struct.devlink** %2, align 8
  %59 = getelementptr inbounds %struct.devlink, %struct.devlink* %58, i32 0, i32 1
  %60 = call i32 @list_empty(i32* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load %struct.devlink*, %struct.devlink** %2, align 8
  %66 = getelementptr inbounds %struct.devlink, %struct.devlink* %65, i32 0, i32 0
  %67 = call i32 @list_empty(i32* %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load %struct.devlink*, %struct.devlink** %2, align 8
  %73 = call i32 @kfree(%struct.devlink* %72)
  ret void
}

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
