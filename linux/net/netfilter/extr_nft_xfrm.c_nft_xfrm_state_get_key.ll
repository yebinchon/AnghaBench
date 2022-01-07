; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_state_get_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_state_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_xfrm = type { i64, i32 }
%struct.nft_regs = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i8* }
%struct.xfrm_state = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@NFT_BREAK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_xfrm*, %struct.nft_regs*, %struct.xfrm_state*)* @nft_xfrm_state_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_xfrm_state_get_key(%struct.nft_xfrm* %0, %struct.nft_regs* %1, %struct.xfrm_state* %2) #0 {
  %4 = alloca %struct.nft_xfrm*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca i32*, align 8
  store %struct.nft_xfrm* %0, %struct.nft_xfrm** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.xfrm_state* %2, %struct.xfrm_state** %6, align 8
  %8 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %9 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.nft_xfrm*, %struct.nft_xfrm** %4, align 8
  %12 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  store i32* %14, i32** %7, align 8
  %15 = load %struct.nft_xfrm*, %struct.nft_xfrm** %4, align 8
  %16 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xfrm_state_addr_ok(i32 %17, i32 %21, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load i8*, i8** @NFT_BREAK, align 8
  %30 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %31 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  br label %84

33:                                               ; preds = %3
  %34 = load %struct.nft_xfrm*, %struct.nft_xfrm** %4, align 8
  %35 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %79 [
    i32 129, label %37
    i32 128, label %37
    i32 135, label %39
    i32 134, label %46
    i32 132, label %53
    i32 131, label %60
    i32 133, label %67
    i32 130, label %73
  ]

37:                                               ; preds = %33, %33
  %38 = call i32 @WARN_ON_ONCE(i32 1)
  br label %79

39:                                               ; preds = %33
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %84

46:                                               ; preds = %33
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %49 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @memcpy(i32* %47, i32* %51, i32 4)
  br label %84

53:                                               ; preds = %33
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %84

60:                                               ; preds = %33
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = call i32 @memcpy(i32* %61, i32* %65, i32 4)
  br label %84

67:                                               ; preds = %33
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %69 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %84

73:                                               ; preds = %33
  %74 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %75 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  br label %84

79:                                               ; preds = %33, %37
  %80 = load i8*, i8** @NFT_BREAK, align 8
  %81 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %82 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  br label %84

84:                                               ; preds = %79, %73, %67, %60, %53, %46, %39, %28
  ret void
}

declare dso_local i32 @xfrm_state_addr_ok(i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
