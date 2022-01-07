; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_anc_data_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_anc_data_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i64 }
%struct.sk_buff = type { i32 }
%struct.tipc_sock = type { i32, i32 }
%struct.tipc_msg = type { i32 }

@SOL_TIPC = common dso_local global i32 0, align 4
@TIPC_ERRINFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TIPC_RETDATA = common dso_local global i32 0, align 4
@TIPC_DIRECT_MSG = common dso_local global i32 0, align 4
@TIPC_DESTNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*, %struct.sk_buff*, %struct.tipc_sock*)* @tipc_sk_anc_data_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sk_anc_data_recv(%struct.msghdr* %0, %struct.sk_buff* %1, %struct.tipc_sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tipc_sock*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tipc_sock* %2, %struct.tipc_sock** %7, align 8
  %14 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %15 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %144

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %23)
  store %struct.tipc_msg* %24, %struct.tipc_msg** %8, align 8
  %25 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %26 = icmp ne %struct.tipc_msg* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %29 = call i32 @msg_errcode(%struct.tipc_msg* %28)
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %30 ]
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %40 = call i32 @msg_data_sz(%struct.tipc_msg* %39)
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %43 = load i32, i32* @SOL_TIPC, align 4
  %44 = load i32, i32* @TIPC_ERRINFO, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %46 = call i32 @put_cmsg(%struct.msghdr* %42, i32 %43, i32 %44, i32 8, i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %4, align 4
  br label %144

51:                                               ; preds = %36
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i64 @skb_linearize(%struct.sk_buff* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %144

62:                                               ; preds = %55
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %63)
  store %struct.tipc_msg* %64, %struct.tipc_msg** %8, align 8
  %65 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %66 = load i32, i32* @SOL_TIPC, align 4
  %67 = load i32, i32* @TIPC_RETDATA, align 4
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %71 = call i32* @msg_data(%struct.tipc_msg* %70)
  %72 = call i32 @put_cmsg(%struct.msghdr* %65, i32 %66, i32 %67, i32 %69, i32* %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %144

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %51
  br label %79

79:                                               ; preds = %78, %31
  %80 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %81 = icmp ne %struct.tipc_msg* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %84 = call i32 @msg_type(%struct.tipc_msg* %83)
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @TIPC_DIRECT_MSG, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i32 [ %84, %82 ], [ %86, %85 ]
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  switch i32 %89, label %128 [
    i32 128, label %90
    i32 129, label %100
    i32 130, label %110
  ]

90:                                               ; preds = %87
  store i32 1, i32* %12, align 4
  %91 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %92 = call i32 @msg_nametype(%struct.tipc_msg* %91)
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %92, i32* %93, align 4
  %94 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %95 = call i32 @msg_namelower(%struct.tipc_msg* %94)
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %98 = call i32 @msg_namelower(%struct.tipc_msg* %97)
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %98, i32* %99, align 4
  br label %129

100:                                              ; preds = %87
  store i32 1, i32* %12, align 4
  %101 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %102 = call i32 @msg_nametype(%struct.tipc_msg* %101)
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %102, i32* %103, align 4
  %104 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %105 = call i32 @msg_namelower(%struct.tipc_msg* %104)
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %105, i32* %106, align 4
  %107 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %108 = call i32 @msg_nameupper(%struct.tipc_msg* %107)
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %108, i32* %109, align 4
  br label %129

110:                                              ; preds = %87
  %111 = load %struct.tipc_sock*, %struct.tipc_sock** %7, align 8
  %112 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %12, align 4
  %116 = load %struct.tipc_sock*, %struct.tipc_sock** %7, align 8
  %117 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %118, i32* %119, align 4
  %120 = load %struct.tipc_sock*, %struct.tipc_sock** %7, align 8
  %121 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %122, i32* %123, align 4
  %124 = load %struct.tipc_sock*, %struct.tipc_sock** %7, align 8
  %125 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %126, i32* %127, align 4
  br label %129

128:                                              ; preds = %87
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %128, %110, %100, %90
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %134 = load i32, i32* @SOL_TIPC, align 4
  %135 = load i32, i32* @TIPC_DESTNAME, align 4
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %137 = call i32 @put_cmsg(%struct.msghdr* %133, i32 %134, i32 %135, i32 12, i32* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %4, align 4
  br label %144

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %129
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %140, %75, %59, %49, %21
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i32*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32* @msg_data(%struct.tipc_msg*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @msg_nametype(%struct.tipc_msg*) #1

declare dso_local i32 @msg_namelower(%struct.tipc_msg*) #1

declare dso_local i32 @msg_nameupper(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
