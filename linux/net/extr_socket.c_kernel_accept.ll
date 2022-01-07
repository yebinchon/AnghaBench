; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_kernel_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_kernel_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__*, %struct.sock* }
%struct.TYPE_2__ = type { i32 (%struct.socket*, %struct.socket*, i32, i32)*, i32 }
%struct.sock = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_accept(%struct.socket* %0, %struct.socket** %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket** %1, %struct.socket*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 1
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.socket**, %struct.socket*** %5, align 8
  %22 = call i32 @sock_create_lite(i32 %14, i32 %17, i32 %20, %struct.socket** %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %58

26:                                               ; preds = %3
  %27 = load %struct.socket*, %struct.socket** %4, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.socket*, %struct.socket*, i32, i32)*, i32 (%struct.socket*, %struct.socket*, i32, i32)** %30, align 8
  %32 = load %struct.socket*, %struct.socket** %4, align 8
  %33 = load %struct.socket**, %struct.socket*** %5, align 8
  %34 = load %struct.socket*, %struct.socket** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 %31(%struct.socket* %32, %struct.socket* %34, i32 %35, i32 1)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.socket**, %struct.socket*** %5, align 8
  %41 = load %struct.socket*, %struct.socket** %40, align 8
  %42 = call i32 @sock_release(%struct.socket* %41)
  %43 = load %struct.socket**, %struct.socket*** %5, align 8
  store %struct.socket* null, %struct.socket** %43, align 8
  br label %58

44:                                               ; preds = %26
  %45 = load %struct.socket*, %struct.socket** %4, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.socket**, %struct.socket*** %5, align 8
  %49 = load %struct.socket*, %struct.socket** %48, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %50, align 8
  %51 = load %struct.socket**, %struct.socket*** %5, align 8
  %52 = load %struct.socket*, %struct.socket** %51, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @__module_get(i32 %56)
  br label %58

58:                                               ; preds = %44, %39, %25
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @sock_create_lite(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
