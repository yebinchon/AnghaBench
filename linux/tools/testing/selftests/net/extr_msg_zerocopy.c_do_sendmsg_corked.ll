; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_sendmsg_corked.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_sendmsg_corked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.msghdr = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@cfg_zerocopy = common dso_local global i32 0, align 4
@cfg_payload_len = common dso_local global i32 0, align 4
@cfg_cork = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@UDP_CORK = common dso_local global i32 0, align 4
@cfg_cork_mixed = common dso_local global i64 0, align 8
@cfg_dst_addr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@AF_INET = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.msghdr*)* @do_sendmsg_corked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sendmsg_corked(i32 %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.msghdr* %1, %struct.msghdr** %4, align 8
  %9 = load i32, i32* @cfg_zerocopy, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @cfg_payload_len, align 4
  %11 = load i32, i32* @cfg_cork, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @cfg_payload_len, align 4
  %14 = load i32, i32* @cfg_cork, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @IPPROTO_UDP, align 4
  %20 = load i32, i32* @UDP_CORK, align 4
  %21 = call i32 @do_setsockopt(i32 %18, i32 %19, i32 %20, i32 1)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %54, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @cfg_cork, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i64, i64* @cfg_cork_mixed, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  store i32 0, i32* %8, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg_dst_addr, i32 0, i32 0), align 8
  %45 = load i64, i64* @AF_INET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* @PF_INET, align 4
  br label %51

49:                                               ; preds = %32
  %50 = load i32, i32* @PF_INET6, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i32 @do_sendmsg(i32 %41, %struct.msghdr* %42, i32 %43, i32 %52)
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @IPPROTO_UDP, align 4
  %60 = load i32, i32* @UDP_CORK, align 4
  %61 = call i32 @do_setsockopt(i32 %58, i32 %59, i32 %60, i32 0)
  ret void
}

declare dso_local i32 @do_setsockopt(i32, i32, i32, i32) #1

declare dso_local i32 @do_sendmsg(i32, %struct.msghdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
