; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_syncookies.c_cookie_timestamp_decode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_syncookies.c_cookie_timestamp_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, i32 }

@TS_OPT_SACK = common dso_local global i32 0, align 4
@TCP_SACK_SEEN = common dso_local global i32 0, align 4
@TS_OPT_WSCALE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cookie_timestamp_decode(%struct.net* %0, %struct.tcp_options_received* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tcp_options_received*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.tcp_options_received* %1, %struct.tcp_options_received** %5, align 8
  %7 = load %struct.tcp_options_received*, %struct.tcp_options_received** %5, align 8
  %8 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.tcp_options_received*, %struct.tcp_options_received** %5, align 8
  %11 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.tcp_options_received*, %struct.tcp_options_received** %5, align 8
  %16 = call i32 @tcp_clear_options(%struct.tcp_options_received* %15)
  store i32 1, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load %struct.net*, %struct.net** %4, align 8
  %19 = getelementptr inbounds %struct.net, %struct.net* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %68

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TS_OPT_SACK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @TCP_SACK_SEEN, align 4
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load %struct.tcp_options_received*, %struct.tcp_options_received** %5, align 8
  %35 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tcp_options_received*, %struct.tcp_options_received** %5, align 8
  %37 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.net*, %struct.net** %4, align 8
  %42 = getelementptr inbounds %struct.net, %struct.net* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %68

47:                                               ; preds = %40, %32
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @TS_OPT_WSCALE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @TS_OPT_WSCALE_MASK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %68

54:                                               ; preds = %47
  %55 = load %struct.tcp_options_received*, %struct.tcp_options_received** %5, align 8
  %56 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @TS_OPT_WSCALE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.tcp_options_received*, %struct.tcp_options_received** %5, align 8
  %61 = getelementptr inbounds %struct.tcp_options_received, %struct.tcp_options_received* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.net*, %struct.net** %4, align 8
  %63 = getelementptr inbounds %struct.net, %struct.net* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %54, %53, %46, %23, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @tcp_clear_options(%struct.tcp_options_received*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
