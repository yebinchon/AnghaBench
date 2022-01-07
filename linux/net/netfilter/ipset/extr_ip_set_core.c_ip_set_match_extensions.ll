; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_match_extensions.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_match_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32 }
%struct.ip_set_ext = type { i32, i32, i32, i32 }
%struct.ip_set_counter = type { i32 }

@IPSET_FLAG_MATCH_COUNTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_set_match_extensions(%struct.ip_set* %0, %struct.ip_set_ext* %1, %struct.ip_set_ext* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_set*, align 8
  %8 = alloca %struct.ip_set_ext*, align 8
  %9 = alloca %struct.ip_set_ext*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ip_set_counter*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %7, align 8
  store %struct.ip_set_ext* %1, %struct.ip_set_ext** %8, align 8
  store %struct.ip_set_ext* %2, %struct.ip_set_ext** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %14 = call i64 @SET_WITH_TIMEOUT(%struct.ip_set* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load i8*, i8** %11, align 8
  %18 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %19 = call i32 @ext_timeout(i8* %17, %struct.ip_set* %18)
  %20 = call i64 @ip_set_timeout_expired(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %76

23:                                               ; preds = %16, %5
  %24 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %25 = call i64 @SET_WITH_COUNTER(%struct.ip_set* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %30 = call %struct.ip_set_counter* @ext_counter(i8* %28, %struct.ip_set* %29)
  store %struct.ip_set_counter* %30, %struct.ip_set_counter** %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @IPSET_FLAG_MATCH_COUNTERS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %27
  %36 = load %struct.ip_set_counter*, %struct.ip_set_counter** %12, align 8
  %37 = call i32 @ip_set_get_packets(%struct.ip_set_counter* %36)
  %38 = load %struct.ip_set_ext*, %struct.ip_set_ext** %9, align 8
  %39 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ip_set_ext*, %struct.ip_set_ext** %9, align 8
  %42 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ip_set_match_counter(i32 %37, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load %struct.ip_set_counter*, %struct.ip_set_counter** %12, align 8
  %48 = call i32 @ip_set_get_bytes(%struct.ip_set_counter* %47)
  %49 = load %struct.ip_set_ext*, %struct.ip_set_ext** %9, align 8
  %50 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ip_set_ext*, %struct.ip_set_ext** %9, align 8
  %53 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ip_set_match_counter(i32 %48, i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %46, %35
  store i32 0, i32* %6, align 4
  br label %76

58:                                               ; preds = %46, %27
  %59 = load %struct.ip_set_counter*, %struct.ip_set_counter** %12, align 8
  %60 = load %struct.ip_set_ext*, %struct.ip_set_ext** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @ip_set_update_counter(%struct.ip_set_counter* %59, %struct.ip_set_ext* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %23
  %64 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %65 = call i64 @SET_WITH_SKBINFO(%struct.ip_set* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %70 = call i32 @ext_skbinfo(i8* %68, %struct.ip_set* %69)
  %71 = load %struct.ip_set_ext*, %struct.ip_set_ext** %8, align 8
  %72 = load %struct.ip_set_ext*, %struct.ip_set_ext** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ip_set_get_skbinfo(i32 %70, %struct.ip_set_ext* %71, %struct.ip_set_ext* %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %63
  store i32 1, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %57, %22
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @SET_WITH_TIMEOUT(%struct.ip_set*) #1

declare dso_local i64 @ip_set_timeout_expired(i32) #1

declare dso_local i32 @ext_timeout(i8*, %struct.ip_set*) #1

declare dso_local i64 @SET_WITH_COUNTER(%struct.ip_set*) #1

declare dso_local %struct.ip_set_counter* @ext_counter(i8*, %struct.ip_set*) #1

declare dso_local i64 @ip_set_match_counter(i32, i32, i32) #1

declare dso_local i32 @ip_set_get_packets(%struct.ip_set_counter*) #1

declare dso_local i32 @ip_set_get_bytes(%struct.ip_set_counter*) #1

declare dso_local i32 @ip_set_update_counter(%struct.ip_set_counter*, %struct.ip_set_ext*, i32) #1

declare dso_local i64 @SET_WITH_SKBINFO(%struct.ip_set*) #1

declare dso_local i32 @ip_set_get_skbinfo(i32, %struct.ip_set_ext*, %struct.ip_set_ext*, i32) #1

declare dso_local i32 @ext_skbinfo(i8*, %struct.ip_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
