; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sock_map_fd.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sock_map_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @sock_map_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_map_fd(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @get_unused_fd_flags(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = call i32 @sock_release(%struct.socket* %16)
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.socket*, %struct.socket** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.file* @sock_alloc_file(%struct.socket* %20, i32 %21, i32* null)
  store %struct.file* %22, %struct.file** %6, align 8
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = call i32 @IS_ERR(%struct.file* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.file*, %struct.file** %6, align 8
  %29 = call i32 @fd_install(i32 %27, %struct.file* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @put_unused_fd(i32 %32)
  %34 = load %struct.file*, %struct.file** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.file* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %26, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local %struct.file* @sock_alloc_file(%struct.socket*, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.file*) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
