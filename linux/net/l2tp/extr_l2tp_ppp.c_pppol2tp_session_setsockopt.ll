; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_session_setsockopt.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_session_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2tp_session = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pppox_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@L2TP_MSG_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: set recv_seq=%d\0A\00", align 1
@PPPOL2TP_L2TP_HDR_SIZE_SEQ = common dso_local global i32 0, align 4
@PPPOL2TP_L2TP_HDR_SIZE_NOSEQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: set send_seq=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: set lns_mode=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: set debug=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: set reorder_timeout=%d\0A\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.l2tp_session*, i32, i32)* @pppol2tp_session_setsockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_session_setsockopt(%struct.sock* %0, %struct.l2tp_session* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.l2tp_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pppox_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.l2tp_session* %1, %struct.l2tp_session** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %137 [
    i32 130, label %12
    i32 128, label %38
    i32 131, label %84
    i32 132, label %110
    i32 129, label %123
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %140

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %28 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %30 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %31 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %32 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %35 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @l2tp_info(%struct.l2tp_session* %29, i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  br label %140

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %140

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %54 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sock*, %struct.sock** %5, align 8
  %56 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %55)
  store %struct.pppox_sock* %56, %struct.pppox_sock** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @PPPOL2TP_L2TP_HDR_SIZE_SEQ, align 4
  br label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @PPPOL2TP_L2TP_HDR_SIZE_NOSEQ, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %66 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %69 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %70 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %69, i32 0, i32 6
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @l2tp_session_set_header_len(%struct.l2tp_session* %68, i32 %73)
  %75 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %76 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %77 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %78 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %81 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @l2tp_info(%struct.l2tp_session* %75, i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  br label %140

84:                                               ; preds = %4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %140

93:                                               ; preds = %87, %84
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %100 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %102 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %103 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %104 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %107 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @l2tp_info(%struct.l2tp_session* %101, i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %108)
  br label %140

110:                                              ; preds = %4
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %113 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %115 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %116 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %117 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %120 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @l2tp_info(%struct.l2tp_session* %114, i32 %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %121)
  br label %140

123:                                              ; preds = %4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @msecs_to_jiffies(i32 %124)
  %126 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %127 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %129 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %130 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %131 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %134 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @l2tp_info(%struct.l2tp_session* %128, i32 %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %135)
  br label %140

137:                                              ; preds = %4
  %138 = load i32, i32* @ENOPROTOOPT, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %137, %123, %110, %93, %90, %63, %44, %21, %18
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i32 @l2tp_info(%struct.l2tp_session*, i32, i8*, i32, i32) #1

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @l2tp_session_set_header_len(%struct.l2tp_session*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
