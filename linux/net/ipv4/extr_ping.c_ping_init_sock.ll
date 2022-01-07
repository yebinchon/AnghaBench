; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ping.c_ping_init_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ping.c_ping_init_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.net = type { i32 }
%struct.group_info = type { i32, i32* }

@AF_INET6 = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ping_init_sock(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.group_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.net* @sock_net(%struct.sock* %12)
  store %struct.net* %13, %struct.net** %4, align 8
  %14 = call i32 (...) @current_egid()
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.net*, %struct.net** %4, align 8
  %25 = call i32 @inet_get_ping_group_range_net(%struct.net* %24, i32* %8, i32* %9)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @gid_lte(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @gid_lte(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %73

36:                                               ; preds = %30, %23
  %37 = call %struct.group_info* (...) @get_current_groups()
  store %struct.group_info* %37, %struct.group_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %63, %36
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.group_info*, %struct.group_info** %6, align 8
  %41 = getelementptr inbounds %struct.group_info, %struct.group_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load %struct.group_info*, %struct.group_info** %6, align 8
  %46 = getelementptr inbounds %struct.group_info, %struct.group_info* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @gid_lte(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @gid_lte(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %69

62:                                               ; preds = %56, %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %38

66:                                               ; preds = %38
  %67 = load i32, i32* @EACCES, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.group_info*, %struct.group_info** %6, align 8
  %71 = call i32 @put_group_info(%struct.group_info* %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %35
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @current_egid(...) #1

declare dso_local i32 @inet_get_ping_group_range_net(%struct.net*, i32*, i32*) #1

declare dso_local i64 @gid_lte(i32, i32) #1

declare dso_local %struct.group_info* @get_current_groups(...) #1

declare dso_local i32 @put_group_info(%struct.group_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
