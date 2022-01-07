; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c___sock_cmsg_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c___sock_cmsg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.cmsghdr = type { i32, i32 }
%struct.sockcm_cookie = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_RECORD_MASK = common dso_local global i32 0, align 4
@SOCK_TXTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sock_cmsg_send(%struct.sock* %0, %struct.msghdr* %1, %struct.cmsghdr* %2, %struct.sockcm_cookie* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca %struct.cmsghdr*, align 8
  %9 = alloca %struct.sockcm_cookie*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store %struct.cmsghdr* %2, %struct.cmsghdr** %8, align 8
  store %struct.sockcm_cookie* %3, %struct.sockcm_cookie** %9, align 8
  %11 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %12 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %100 [
    i32 129, label %14
    i32 128, label %41
    i32 130, label %75
    i32 131, label %99
    i32 132, label %99
  ]

14:                                               ; preds = %4
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.TYPE_2__* @sock_net(%struct.sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CAP_NET_ADMIN, align 4
  %20 = call i32 @ns_capable(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %104

25:                                               ; preds = %14
  %26 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %27 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CMSG_LEN(i32 4)
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %104

34:                                               ; preds = %25
  %35 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %36 = call i64 @CMSG_DATA(%struct.cmsghdr* %35)
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sockcm_cookie*, %struct.sockcm_cookie** %9, align 8
  %40 = getelementptr inbounds %struct.sockcm_cookie, %struct.sockcm_cookie* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %103

41:                                               ; preds = %4
  %42 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %43 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CMSG_LEN(i32 4)
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %104

50:                                               ; preds = %41
  %51 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %52 = call i64 @CMSG_DATA(%struct.cmsghdr* %51)
  %53 = inttoptr i64 %52 to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @SOF_TIMESTAMPING_TX_RECORD_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %104

63:                                               ; preds = %50
  %64 = load i32, i32* @SOF_TIMESTAMPING_TX_RECORD_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.sockcm_cookie*, %struct.sockcm_cookie** %9, align 8
  %67 = getelementptr inbounds %struct.sockcm_cookie, %struct.sockcm_cookie* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.sockcm_cookie*, %struct.sockcm_cookie** %9, align 8
  %72 = getelementptr inbounds %struct.sockcm_cookie, %struct.sockcm_cookie* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %103

75:                                               ; preds = %4
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = load i32, i32* @SOCK_TXTIME, align 4
  %78 = call i32 @sock_flag(%struct.sock* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %104

83:                                               ; preds = %75
  %84 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %85 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @CMSG_LEN(i32 4)
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %104

92:                                               ; preds = %83
  %93 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %94 = call i64 @CMSG_DATA(%struct.cmsghdr* %93)
  %95 = inttoptr i64 %94 to i32*
  %96 = call i32 @get_unaligned(i32* %95)
  %97 = load %struct.sockcm_cookie*, %struct.sockcm_cookie** %9, align 8
  %98 = getelementptr inbounds %struct.sockcm_cookie, %struct.sockcm_cookie* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %103

99:                                               ; preds = %4, %4
  br label %103

100:                                              ; preds = %4
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %104

103:                                              ; preds = %99, %92, %63, %34
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %100, %89, %80, %60, %47, %31, %22
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.TYPE_2__* @sock_net(%struct.sock*) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
