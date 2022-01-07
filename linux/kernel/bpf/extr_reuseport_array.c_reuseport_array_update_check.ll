; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_reuseport_array_update_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_reuseport_array_update_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reuseport_array = type { i32 }
%struct.sock = type { i64, i64, i64, i32 }
%struct.sock_reuseport = type { i32 }

@BPF_NOEXIST = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@BPF_EXIST = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@SOCK_RCU_FREE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reuseport_array*, %struct.sock*, %struct.sock*, %struct.sock_reuseport*, i64)* @reuseport_array_update_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reuseport_array_update_check(%struct.reuseport_array* %0, %struct.sock* %1, %struct.sock* %2, %struct.sock_reuseport* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.reuseport_array*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sock_reuseport*, align 8
  %11 = alloca i64, align 8
  store %struct.reuseport_array* %0, %struct.reuseport_array** %7, align 8
  store %struct.sock* %1, %struct.sock** %8, align 8
  store %struct.sock* %2, %struct.sock** %9, align 8
  store %struct.sock_reuseport* %3, %struct.sock_reuseport** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.sock*, %struct.sock** %9, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* @BPF_NOEXIST, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EEXIST, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %101

21:                                               ; preds = %14, %5
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = icmp ne %struct.sock* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @BPF_EXIST, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %101

31:                                               ; preds = %24, %21
  %32 = load %struct.sock*, %struct.sock** %8, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IPPROTO_UDP, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.sock*, %struct.sock** %8, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IPPROTO_TCP, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %101

46:                                               ; preds = %37, %31
  %47 = load %struct.sock*, %struct.sock** %8, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AF_INET, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.sock*, %struct.sock** %8, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AF_INET6, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %101

61:                                               ; preds = %52, %46
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SOCK_STREAM, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.sock*, %struct.sock** %8, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SOCK_DGRAM, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %101

76:                                               ; preds = %67, %61
  %77 = load %struct.sock*, %struct.sock** %8, align 8
  %78 = load i32, i32* @SOCK_RCU_FREE, align 4
  %79 = call i32 @sock_flag(%struct.sock* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.sock*, %struct.sock** %8, align 8
  %83 = call i32 @sk_hashed(%struct.sock* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.sock_reuseport*, %struct.sock_reuseport** %10, align 8
  %87 = icmp ne %struct.sock_reuseport* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85, %81, %76
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %101

91:                                               ; preds = %85
  %92 = load %struct.sock*, %struct.sock** %8, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @READ_ONCE(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %101

100:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %97, %88, %73, %58, %43, %28, %18
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sk_hashed(%struct.sock*) #1

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
