; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_notify_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_notify_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.mpls_route = type { i32 }
%struct.nl_info = type { i32, %struct.nlmsghdr* }
%struct.nlmsghdr = type { i32 }

@RTM_NEWROUTE = common dso_local global i32 0, align 4
@RTM_DELROUTE = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@MPLS_LABEL_FIRST_UNRESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32, %struct.mpls_route*, %struct.mpls_route*, %struct.nl_info*)* @mpls_notify_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpls_notify_route(%struct.net* %0, i32 %1, %struct.mpls_route* %2, %struct.mpls_route* %3, %struct.nl_info* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpls_route*, align 8
  %9 = alloca %struct.mpls_route*, align 8
  %10 = alloca %struct.nl_info*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mpls_route*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mpls_route* %2, %struct.mpls_route** %8, align 8
  store %struct.mpls_route* %3, %struct.mpls_route** %9, align 8
  store %struct.nl_info* %4, %struct.nl_info** %10, align 8
  %16 = load %struct.nl_info*, %struct.nl_info** %10, align 8
  %17 = icmp ne %struct.nl_info* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load %struct.nl_info*, %struct.nl_info** %10, align 8
  %20 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %19, i32 0, i32 1
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi %struct.nlmsghdr* [ %21, %18 ], [ null, %22 ]
  store %struct.nlmsghdr* %24, %struct.nlmsghdr** %11, align 8
  %25 = load %struct.nl_info*, %struct.nl_info** %10, align 8
  %26 = icmp ne %struct.nl_info* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.nl_info*, %struct.nl_info** %10, align 8
  %29 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  br label %32

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 0, %31 ]
  store i32 %33, i32* %12, align 4
  %34 = load %struct.mpls_route*, %struct.mpls_route** %9, align 8
  %35 = icmp ne %struct.mpls_route* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @RTM_NEWROUTE, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @RTM_DELROUTE, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %13, align 4
  %42 = load %struct.mpls_route*, %struct.mpls_route** %9, align 8
  %43 = icmp ne %struct.mpls_route* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load %struct.mpls_route*, %struct.mpls_route** %9, align 8
  br label %48

46:                                               ; preds = %40
  %47 = load %struct.mpls_route*, %struct.mpls_route** %8, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi %struct.mpls_route* [ %45, %44 ], [ %47, %46 ]
  store %struct.mpls_route* %49, %struct.mpls_route** %14, align 8
  %50 = load %struct.mpls_route*, %struct.mpls_route** %8, align 8
  %51 = icmp ne %struct.mpls_route* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.mpls_route*, %struct.mpls_route** %9, align 8
  %54 = icmp ne %struct.mpls_route* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @NLM_F_REPLACE, align 4
  br label %58

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  store i32 %59, i32* %15, align 4
  %60 = load %struct.mpls_route*, %struct.mpls_route** %14, align 8
  %61 = icmp ne %struct.mpls_route* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MPLS_LABEL_FIRST_UNRESERVED, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.mpls_route*, %struct.mpls_route** %14, align 8
  %70 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %71 = load %struct.net*, %struct.net** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @rtmsg_lfib(i32 %67, i32 %68, %struct.mpls_route* %69, %struct.nlmsghdr* %70, %struct.net* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %66, %62, %58
  ret void
}

declare dso_local i32 @rtmsg_lfib(i32, i32, %struct.mpls_route*, %struct.nlmsghdr*, %struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
