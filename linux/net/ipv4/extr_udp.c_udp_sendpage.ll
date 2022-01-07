; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.page = type { i32 }
%struct.inet_sock = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.udp_sock = type { i64, i64, i32 }
%struct.msghdr = type { i32 }

@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cork failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_sendpage(%struct.sock* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inet_sock*, align 8
  %13 = alloca %struct.udp_sock*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.msghdr, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = call %struct.inet_sock* @inet_sk(%struct.sock* %16)
  store %struct.inet_sock* %17, %struct.inet_sock** %12, align 8
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = call %struct.udp_sock* @udp_sk(%struct.sock* %18)
  store %struct.udp_sock* %19, %struct.udp_sock** %13, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* @MSG_MORE, align 4
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %24, %5
  %29 = load %struct.udp_sock*, %struct.udp_sock** %13, align 8
  %30 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %15, i32 0, i32 0
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @MSG_MORE, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %34, align 4
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = call i32 @udp_sendmsg(%struct.sock* %38, %struct.msghdr* %15, i32 0)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %6, align 4
  br label %124

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.sock*, %struct.sock** %7, align 8
  %47 = call i32 @lock_sock(%struct.sock* %46)
  %48 = load %struct.udp_sock*, %struct.udp_sock** %13, align 8
  %49 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.sock*, %struct.sock** %7, align 8
  %58 = call i32 @release_sock(%struct.sock* %57)
  %59 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %124

62:                                               ; preds = %45
  %63 = load %struct.sock*, %struct.sock** %7, align 8
  %64 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %65 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.page*, %struct.page** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ip_append_page(%struct.sock* %63, i32* %68, %struct.page* %69, i32 %70, i64 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %62
  %79 = load %struct.sock*, %struct.sock** %7, align 8
  %80 = call i32 @release_sock(%struct.sock* %79)
  %81 = load %struct.sock*, %struct.sock** %7, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.page*, %struct.page** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @sock_no_sendpage(i32 %83, %struct.page* %84, i32 %85, i64 %86, i32 %87)
  store i32 %88, i32* %6, align 4
  br label %124

89:                                               ; preds = %62
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.sock*, %struct.sock** %7, align 8
  %94 = call i32 @udp_flush_pending_frames(%struct.sock* %93)
  br label %120

95:                                               ; preds = %89
  %96 = load i64, i64* %10, align 8
  %97 = load %struct.udp_sock*, %struct.udp_sock** %13, align 8
  %98 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.udp_sock*, %struct.udp_sock** %13, align 8
  %102 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @MSG_MORE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load %struct.sock*, %struct.sock** %7, align 8
  %112 = call i32 @udp_push_pending_frames(%struct.sock* %111)
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %110, %105, %95
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* %10, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %92
  %121 = load %struct.sock*, %struct.sock** %7, align 8
  %122 = call i32 @release_sock(%struct.sock* %121)
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %120, %78, %56, %42
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.udp_sock* @udp_sk(%struct.sock*) #1

declare dso_local i32 @udp_sendmsg(%struct.sock*, %struct.msghdr*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*) #1

declare dso_local i32 @ip_append_page(%struct.sock*, i32*, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @sock_no_sendpage(i32, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @udp_flush_pending_frames(%struct.sock*) #1

declare dso_local i32 @udp_push_pending_frames(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
