; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bpf.c_tcp_bpf_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.page = type { i32 }
%struct.sk_msg = type { i32 }
%struct.sk_psock = type { i64, i32, %struct.sk_msg* }

@__SK_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.page*, i32, i64, i32)* @tcp_bpf_sendpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_bpf_sendpage(%struct.sock* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_msg, align 4
  %13 = alloca %struct.sk_msg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_psock*, align 8
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.sk_msg* null, %struct.sk_msg** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = call %struct.sk_psock* @sk_psock_get(%struct.sock* %18)
  store %struct.sk_psock* %19, %struct.sk_psock** %16, align 8
  %20 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %21 = icmp ne %struct.sk_psock* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.sock*, %struct.sock** %7, align 8
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @tcp_sendpage(%struct.sock* %27, %struct.page* %28, i32 %29, i64 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %123

33:                                               ; preds = %5
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = call i32 @lock_sock(%struct.sock* %34)
  %36 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %37 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %36, i32 0, i32 2
  %38 = load %struct.sk_msg*, %struct.sk_msg** %37, align 8
  %39 = icmp ne %struct.sk_msg* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %42 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %41, i32 0, i32 2
  %43 = load %struct.sk_msg*, %struct.sk_msg** %42, align 8
  store %struct.sk_msg* %43, %struct.sk_msg** %13, align 8
  br label %47

44:                                               ; preds = %33
  store %struct.sk_msg* %12, %struct.sk_msg** %13, align 8
  %45 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %46 = call i32 @sk_msg_init(%struct.sk_msg* %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %49 = call i32 @sk_msg_full(%struct.sk_msg* %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %109

53:                                               ; preds = %47
  %54 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @sk_msg_page_add(%struct.sk_msg* %54, %struct.page* %55, i64 %56, i32 %57)
  %59 = load %struct.sock*, %struct.sock** %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @sk_mem_charge(%struct.sock* %59, i64 %60)
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %15, align 4
  %64 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %65 = call i32 @sk_msg_full(%struct.sk_msg* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  store i32 1, i32* %17, align 4
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %70 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %68
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %76 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %81 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  br label %88

82:                                               ; preds = %73
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %85 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %86, %83
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %82, %79
  %89 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %90 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  br label %109

97:                                               ; preds = %93, %88
  %98 = load i32, i32* @__SK_NONE, align 4
  %99 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %100 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %102 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %97, %68
  %104 = load %struct.sock*, %struct.sock** %7, align 8
  %105 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %106 = load %struct.sk_msg*, %struct.sk_msg** %13, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @tcp_bpf_send_verdict(%struct.sock* %104, %struct.sk_psock* %105, %struct.sk_msg* %106, i32* %15, i32 %107)
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %103, %96, %52
  %110 = load %struct.sock*, %struct.sock** %7, align 8
  %111 = call i32 @release_sock(%struct.sock* %110)
  %112 = load %struct.sock*, %struct.sock** %7, align 8
  %113 = load %struct.sk_psock*, %struct.sk_psock** %16, align 8
  %114 = call i32 @sk_psock_put(%struct.sock* %112, %struct.sk_psock* %113)
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* %15, align 4
  br label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %14, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %26
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.sk_psock* @sk_psock_get(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_sendpage(%struct.sock*, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sk_msg_init(%struct.sk_msg*) #1

declare dso_local i32 @sk_msg_full(%struct.sk_msg*) #1

declare dso_local i32 @sk_msg_page_add(%struct.sk_msg*, %struct.page*, i64, i32) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i64) #1

declare dso_local i32 @tcp_bpf_send_verdict(%struct.sock*, %struct.sk_psock*, %struct.sk_msg*, i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sk_psock_put(%struct.sock*, %struct.sk_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
