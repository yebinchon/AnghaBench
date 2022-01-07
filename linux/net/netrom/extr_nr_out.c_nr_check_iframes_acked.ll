; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_out.c_nr_check_iframes_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_out.c_nr_check_iframes_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.nr_sock = type { i16, i16, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_check_iframes_acked(%struct.sock* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.nr_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.nr_sock* @nr_sk(%struct.sock* %6)
  store %struct.nr_sock* %7, %struct.nr_sock** %5, align 8
  %8 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %9 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = load i16, i16* %4, align 2
  %18 = call i32 @nr_frames_acked(%struct.sock* %16, i16 zeroext %17)
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call i32 @nr_stop_t1timer(%struct.sock* %19)
  %21 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %22 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.nr_sock*, %struct.nr_sock** %5, align 8
  %25 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %24, i32 0, i32 1
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = load i16, i16* %4, align 2
  %34 = call i32 @nr_frames_acked(%struct.sock* %32, i16 zeroext %33)
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = call i32 @nr_start_t1timer(%struct.sock* %35)
  br label %37

37:                                               ; preds = %31, %23
  br label %38

38:                                               ; preds = %37, %15
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @nr_frames_acked(%struct.sock*, i16 zeroext) #1

declare dso_local i32 @nr_stop_t1timer(%struct.sock*) #1

declare dso_local i32 @nr_start_t1timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
