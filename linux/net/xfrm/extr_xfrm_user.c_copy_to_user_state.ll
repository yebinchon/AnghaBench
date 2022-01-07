; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_to_user_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_to_user_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.xfrm_usersa_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, %struct.xfrm_usersa_info*)* @copy_to_user_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_to_user_state(%struct.xfrm_state* %0, %struct.xfrm_usersa_info* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.xfrm_usersa_info*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.xfrm_usersa_info* %1, %struct.xfrm_usersa_info** %4, align 8
  %5 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %6 = call i32 @memset(%struct.xfrm_usersa_info* %5, i32 0, i32 56)
  %7 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %8 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %7, i32 0, i32 11
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 6
  %11 = call i32 @memcpy(i32* %8, i32* %10, i32 4)
  %12 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %13 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %12, i32 0, i32 10
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 5
  %16 = call i32 @memcpy(i32* %13, i32* %15, i32 4)
  %17 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %18 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %17, i32 0, i32 9
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %20 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %19, i32 0, i32 4
  %21 = call i32 @memcpy(i32* %18, i32* %20, i32 4)
  %22 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %23 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %22, i32 0, i32 8
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %25 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %24, i32 0, i32 3
  %26 = call i32 @memcpy(i32* %23, i32* %25, i32 4)
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %32 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = call i32 @put_unaligned(i32 %30, i32* %33)
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %36 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %40 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i32 @put_unaligned(i32 %38, i32* %41)
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %44 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %48 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @put_unaligned(i32 %46, i32* %49)
  %51 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %52 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %51, i32 0, i32 6
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %54 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  %56 = call i32 @memcpy(i32* %52, i32* %55, i32 4)
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %62 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %64 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %68 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %70 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %74 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %76 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %80 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %82 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %86 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %88 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %92 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  ret void
}

declare dso_local i32 @memset(%struct.xfrm_usersa_info*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
