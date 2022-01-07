; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_do_tx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_do_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_PACKET = common dso_local global i32 0, align 4
@cfg_use_dgram = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket t\00", align 1
@cfg_use_bind = common dso_local global i64 0, align 8
@cfg_use_qdisc_bypass = common dso_local global i64 0, align 8
@SOL_PACKET = common dso_local global i32 0, align 4
@PACKET_QDISC_BYPASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"setsockopt qdisc bypass\00", align 1
@cfg_use_vnet = common dso_local global i64 0, align 8
@PACKET_VNET_HDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"setsockopt vnet\00", align 1
@cfg_payload_len = common dso_local global i32 0, align 4
@cfg_truncate_len = common dso_local global i32 0, align 4
@tbuf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"close t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_tx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %4 = load i32, i32* @PF_PACKET, align 4
  %5 = load i64, i64* @cfg_use_dgram, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  br label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @SOCK_RAW, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = call i32 @socket(i32 %4, i32 %12, i32 0)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @error(i32 1, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i64, i64* @cfg_use_bind, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @do_bind(i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i64, i64* @cfg_use_qdisc_bypass, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @SOL_PACKET, align 4
  %31 = load i32, i32* @PACKET_QDISC_BYPASS, align 4
  %32 = call i64 @setsockopt(i32 %29, i32 %30, i32 %31, i32* %1, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @error(i32 1, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %28, %25
  %38 = load i64, i64* @cfg_use_vnet, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SOL_PACKET, align 4
  %43 = load i32, i32* @PACKET_VNET_HDR, align 4
  %44 = call i64 @setsockopt(i32 %41, i32 %42, i32 %43, i32* %1, i32 4)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @error(i32 1, i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %40, %37
  %50 = load i32, i32* @cfg_payload_len, align 4
  %51 = call i32 @build_packet(i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @cfg_truncate_len, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @cfg_truncate_len, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %49
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @tbuf, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @do_send(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = call i64 @close(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @error(i32 1, i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %57
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @do_bind(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @build_packet(i32) #1

declare dso_local i32 @do_send(i32, i32, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
