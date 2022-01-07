; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_query_next_client.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_query_next_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i32 }
%struct.snd_seq_client_info = type { i64 }

@INT_MAX = common dso_local global i64 0, align 8
@SNDRV_SEQ_MAX_CLIENTS = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_client*, i8*)* @snd_seq_ioctl_query_next_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_ioctl_query_next_client(%struct.snd_seq_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_seq_client_info*, align 8
  %7 = alloca %struct.snd_seq_client*, align 8
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.snd_seq_client_info*
  store %struct.snd_seq_client_info* %9, %struct.snd_seq_client_info** %6, align 8
  store %struct.snd_seq_client* null, %struct.snd_seq_client** %7, align 8
  %10 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %6, align 8
  %11 = getelementptr inbounds %struct.snd_seq_client_info, %struct.snd_seq_client_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @INT_MAX, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %6, align 8
  %17 = getelementptr inbounds %struct.snd_seq_client_info, %struct.snd_seq_client_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %6, align 8
  %22 = getelementptr inbounds %struct.snd_seq_client_info, %struct.snd_seq_client_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %6, align 8
  %27 = getelementptr inbounds %struct.snd_seq_client_info, %struct.snd_seq_client_info* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %44, %28
  %30 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %6, align 8
  %31 = getelementptr inbounds %struct.snd_seq_client_info, %struct.snd_seq_client_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNDRV_SEQ_MAX_CLIENTS, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %6, align 8
  %37 = getelementptr inbounds %struct.snd_seq_client_info, %struct.snd_seq_client_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.snd_seq_client* @snd_seq_client_use_ptr(i64 %38)
  store %struct.snd_seq_client* %39, %struct.snd_seq_client** %7, align 8
  %40 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %41 = icmp ne %struct.snd_seq_client* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %49

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %6, align 8
  %46 = getelementptr inbounds %struct.snd_seq_client_info, %struct.snd_seq_client_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %29

49:                                               ; preds = %42, %29
  %50 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %51 = icmp eq %struct.snd_seq_client* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %49
  %56 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %57 = load %struct.snd_seq_client_info*, %struct.snd_seq_client_info** %6, align 8
  %58 = call i32 @get_client_info(%struct.snd_seq_client* %56, %struct.snd_seq_client_info* %57)
  %59 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %60 = call i32 @snd_seq_client_unlock(%struct.snd_seq_client* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.snd_seq_client* @snd_seq_client_use_ptr(i64) #1

declare dso_local i32 @get_client_info(%struct.snd_seq_client*, %struct.snd_seq_client_info*) #1

declare dso_local i32 @snd_seq_client_unlock(%struct.snd_seq_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
