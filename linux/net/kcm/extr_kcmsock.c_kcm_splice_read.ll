; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_splice_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.pipe_inode_info = type { i32 }
%struct.kcm_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.strp_msg = type { i64, i32 }
%struct.sk_buff = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32*, %struct.pipe_inode_info*, i64, i32)* @kcm_splice_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcm_splice_read(%struct.socket* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pipe_inode_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.kcm_sock*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.strp_msg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %21, %struct.sock** %12, align 8
  %22 = load %struct.sock*, %struct.sock** %12, align 8
  %23 = call %struct.kcm_sock* @kcm_sk(%struct.sock* %22)
  store %struct.kcm_sock* %23, %struct.kcm_sock** %13, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.sock*, %struct.sock** %12, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @MSG_DONTWAIT, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @sock_rcvtimeo(%struct.sock* %24, i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load %struct.sock*, %struct.sock** %12, align 8
  %30 = call i32 @lock_sock(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %12, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i64, i64* %14, align 8
  %34 = call %struct.sk_buff* @kcm_wait_data(%struct.sock* %31, i32 %32, i64 %33, i32* %16)
  store %struct.sk_buff* %34, %struct.sk_buff** %18, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %5
  br label %85

38:                                               ; preds = %5
  %39 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %40 = call %struct.strp_msg* @strp_msg(%struct.sk_buff* %39)
  store %struct.strp_msg* %40, %struct.strp_msg** %15, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.strp_msg*, %struct.strp_msg** %15, align 8
  %43 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.strp_msg*, %struct.strp_msg** %15, align 8
  %48 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %52 = load %struct.sock*, %struct.sock** %12, align 8
  %53 = load %struct.strp_msg*, %struct.strp_msg** %15, align 8
  %54 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @skb_splice_bits(%struct.sk_buff* %51, %struct.sock* %52, i32 %55, %struct.pipe_inode_info* %56, i64 %57, i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %16, align 4
  br label %85

64:                                               ; preds = %50
  %65 = load %struct.kcm_sock*, %struct.kcm_sock** %13, align 8
  %66 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @KCM_STATS_ADD(i32 %68, i32 %69)
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.strp_msg*, %struct.strp_msg** %15, align 8
  %73 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.strp_msg*, %struct.strp_msg** %15, align 8
  %79 = getelementptr inbounds %struct.strp_msg, %struct.strp_msg* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.sock*, %struct.sock** %12, align 8
  %83 = call i32 @release_sock(%struct.sock* %82)
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %6, align 4
  br label %89

85:                                               ; preds = %62, %37
  %86 = load %struct.sock*, %struct.sock** %12, align 8
  %87 = call i32 @release_sock(%struct.sock* %86)
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %64
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.kcm_sock* @kcm_sk(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @kcm_wait_data(%struct.sock*, i32, i64, i32*) #1

declare dso_local %struct.strp_msg* @strp_msg(%struct.sk_buff*) #1

declare dso_local i32 @skb_splice_bits(%struct.sk_buff*, %struct.sock*, i32, %struct.pipe_inode_info*, i64, i32) #1

declare dso_local i32 @KCM_STATS_ADD(i32, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
