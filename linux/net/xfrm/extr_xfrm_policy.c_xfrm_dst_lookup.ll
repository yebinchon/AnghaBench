; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_dst_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_dst_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.xfrm_state = type { i32*, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net = type { i32 }

@XFRM_TYPE_LOCAL_COADDR = common dso_local global i32 0, align 4
@XFRM_TYPE_REMOTE_COADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.xfrm_state*, i32, i32, i32*, i32*, i32, i32)* @xfrm_dst_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @xfrm_dst_lookup(%struct.xfrm_state* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.xfrm_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.net*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.dst_entry*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %20 = call %struct.net* @xs_net(%struct.xfrm_state* %19)
  store %struct.net* %20, %struct.net** %15, align 8
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32* %23, i32** %16, align 8
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %25 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32* %26, i32** %17, align 8
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @XFRM_TYPE_LOCAL_COADDR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %7
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %12, align 8
  store i32* %39, i32** %17, align 8
  br label %40

40:                                               ; preds = %35, %7
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @XFRM_TYPE_REMOTE_COADDR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load i32*, i32** %11, align 8
  store i32* %50, i32** %16, align 8
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %17, align 8
  br label %54

54:                                               ; preds = %49, %40
  %55 = load %struct.net*, %struct.net** %15, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %16, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call %struct.dst_entry* @__xfrm_dst_lookup(%struct.net* %55, i32 %56, i32 %57, i32* %58, i32* %59, i32 %60, i32 %61)
  store %struct.dst_entry* %62, %struct.dst_entry** %18, align 8
  %63 = load %struct.dst_entry*, %struct.dst_entry** %18, align 8
  %64 = call i32 @IS_ERR(%struct.dst_entry* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %54
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = icmp ne i32* %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32*, i32** %11, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = call i32 @memcpy(i32* %71, i32* %72, i32 4)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32*, i32** %12, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = icmp ne i32* %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = call i32 @memcpy(i32* %79, i32* %80, i32 4)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %54
  %84 = load %struct.dst_entry*, %struct.dst_entry** %18, align 8
  ret %struct.dst_entry* %84
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.dst_entry* @__xfrm_dst_lookup(%struct.net*, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
