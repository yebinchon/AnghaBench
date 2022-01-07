; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c___sys_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c___sys_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@SOCK_MAX = common dso_local global i32 0, align 4
@SOCK_TYPE_MASK = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sys_socket(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @SOCK_CLOEXEC, align 4
  %12 = load i32, i32* @O_CLOEXEC, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load i32, i32* @SOCK_MAX, align 4
  %17 = load i32, i32* @SOCK_TYPE_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SOCK_TYPE_MASK, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUILD_BUG_ON(i32 %21)
  %23 = load i32, i32* @SOCK_CLOEXEC, align 4
  %24 = load i32, i32* @SOCK_TYPE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @BUILD_BUG_ON(i32 %25)
  %27 = load i32, i32* @SOCK_NONBLOCK, align 4
  %28 = load i32, i32* @SOCK_TYPE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @BUILD_BUG_ON(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SOCK_TYPE_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @SOCK_CLOEXEC, align 4
  %37 = load i32, i32* @SOCK_NONBLOCK, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %81

45:                                               ; preds = %3
  %46 = load i32, i32* @SOCK_TYPE_MASK, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @SOCK_NONBLOCK, align 4
  %50 = load i32, i32* @O_NONBLOCK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @SOCK_NONBLOCK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @SOCK_NONBLOCK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load i32, i32* @O_NONBLOCK, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %57, %52, %45
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @sock_create(i32 %65, i32 %66, i32 %67, %struct.socket** %9)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %81

73:                                               ; preds = %64
  %74 = load %struct.socket*, %struct.socket** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @O_CLOEXEC, align 4
  %77 = load i32, i32* @O_NONBLOCK, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = call i32 @sock_map_fd(%struct.socket* %74, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %73, %71, %42
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @sock_create(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @sock_map_fd(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
