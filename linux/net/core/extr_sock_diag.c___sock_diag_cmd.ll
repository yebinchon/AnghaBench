; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c___sock_diag_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c___sock_diag_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_diag_handler = type { i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*)*, i32 (%struct.sk_buff.2*, %struct.nlmsghdr.3*)* }
%struct.sk_buff.0 = type opaque
%struct.nlmsghdr.1 = type opaque
%struct.sk_buff.2 = type opaque
%struct.nlmsghdr.3 = type opaque
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.sock_diag_req = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_MAX = common dso_local global i64 0, align 8
@sock_diag_handlers = common dso_local global %struct.sock_diag_handler** null, align 8
@sock_diag_table_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SOCK_DIAG_BY_FAMILY = common dso_local global i64 0, align 8
@SOCK_DESTROY = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @__sock_diag_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sock_diag_cmd(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_diag_req*, align 8
  %8 = alloca %struct.sock_diag_handler*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  %9 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %10 = call %struct.sock_diag_req* @nlmsg_data(%struct.nlmsghdr* %9)
  store %struct.sock_diag_req* %10, %struct.sock_diag_req** %7, align 8
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %12 = call i32 @nlmsg_len(%struct.nlmsghdr* %11)
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %103

18:                                               ; preds = %2
  %19 = load %struct.sock_diag_req*, %struct.sock_diag_req** %7, align 8
  %20 = getelementptr inbounds %struct.sock_diag_req, %struct.sock_diag_req* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AF_MAX, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %103

27:                                               ; preds = %18
  %28 = load %struct.sock_diag_req*, %struct.sock_diag_req** %7, align 8
  %29 = getelementptr inbounds %struct.sock_diag_req, %struct.sock_diag_req* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_MAX, align 8
  %32 = call i64 @array_index_nospec(i64 %30, i64 %31)
  %33 = load %struct.sock_diag_req*, %struct.sock_diag_req** %7, align 8
  %34 = getelementptr inbounds %struct.sock_diag_req, %struct.sock_diag_req* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.sock_diag_handler**, %struct.sock_diag_handler*** @sock_diag_handlers, align 8
  %36 = load %struct.sock_diag_req*, %struct.sock_diag_req** %7, align 8
  %37 = getelementptr inbounds %struct.sock_diag_req, %struct.sock_diag_req* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.sock_diag_handler*, %struct.sock_diag_handler** %35, i64 %38
  %40 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %39, align 8
  %41 = icmp eq %struct.sock_diag_handler* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %27
  %43 = load %struct.sock_diag_req*, %struct.sock_diag_req** %7, align 8
  %44 = getelementptr inbounds %struct.sock_diag_req, %struct.sock_diag_req* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @sock_load_diag_module(i64 %45, i32 0)
  br label %47

47:                                               ; preds = %42, %27
  %48 = call i32 @mutex_lock(i32* @sock_diag_table_mutex)
  %49 = load %struct.sock_diag_handler**, %struct.sock_diag_handler*** @sock_diag_handlers, align 8
  %50 = load %struct.sock_diag_req*, %struct.sock_diag_req** %7, align 8
  %51 = getelementptr inbounds %struct.sock_diag_req, %struct.sock_diag_req* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.sock_diag_handler*, %struct.sock_diag_handler** %49, i64 %52
  %54 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %53, align 8
  store %struct.sock_diag_handler* %54, %struct.sock_diag_handler** %8, align 8
  %55 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %8, align 8
  %56 = icmp eq %struct.sock_diag_handler* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %100

60:                                               ; preds = %47
  %61 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %62 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SOCK_DIAG_BY_FAMILY, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %8, align 8
  %68 = getelementptr inbounds %struct.sock_diag_handler, %struct.sock_diag_handler* %67, i32 0, i32 0
  %69 = load i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*)*, i32 (%struct.sk_buff.0*, %struct.nlmsghdr.1*)** %68, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = bitcast %struct.sk_buff* %70 to %struct.sk_buff.0*
  %72 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %73 = bitcast %struct.nlmsghdr* %72 to %struct.nlmsghdr.1*
  %74 = call i32 %69(%struct.sk_buff.0* %71, %struct.nlmsghdr.1* %73)
  store i32 %74, i32* %6, align 4
  br label %99

75:                                               ; preds = %60
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %77 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SOCK_DESTROY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %8, align 8
  %83 = getelementptr inbounds %struct.sock_diag_handler, %struct.sock_diag_handler* %82, i32 0, i32 1
  %84 = load i32 (%struct.sk_buff.2*, %struct.nlmsghdr.3*)*, i32 (%struct.sk_buff.2*, %struct.nlmsghdr.3*)** %83, align 8
  %85 = icmp ne i32 (%struct.sk_buff.2*, %struct.nlmsghdr.3*)* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %8, align 8
  %88 = getelementptr inbounds %struct.sock_diag_handler, %struct.sock_diag_handler* %87, i32 0, i32 1
  %89 = load i32 (%struct.sk_buff.2*, %struct.nlmsghdr.3*)*, i32 (%struct.sk_buff.2*, %struct.nlmsghdr.3*)** %88, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = bitcast %struct.sk_buff* %90 to %struct.sk_buff.2*
  %92 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %93 = bitcast %struct.nlmsghdr* %92 to %struct.nlmsghdr.3*
  %94 = call i32 %89(%struct.sk_buff.2* %91, %struct.nlmsghdr.3* %93)
  store i32 %94, i32* %6, align 4
  br label %98

95:                                               ; preds = %81, %75
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %86
  br label %99

99:                                               ; preds = %98, %66
  br label %100

100:                                              ; preds = %99, %57
  %101 = call i32 @mutex_unlock(i32* @sock_diag_table_mutex)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %24, %15
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.sock_diag_req* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local i64 @array_index_nospec(i64, i64) #1

declare dso_local i32 @sock_load_diag_module(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
