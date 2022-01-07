; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_clientptr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_clientptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i32 }

@SNDRV_SEQ_MAX_CLIENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ALSA: seq: oops. Trying to get pointer to client %d\0A\00", align 1
@clienttab = common dso_local global %struct.snd_seq_client** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_seq_client* (i32)* @clientptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_seq_client* @clientptr(i32 %0) #0 {
  %2 = alloca %struct.snd_seq_client*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SNDRV_SEQ_MAX_CLIENTS, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.snd_seq_client* null, %struct.snd_seq_client** %2, align 8
  br label %19

13:                                               ; preds = %6
  %14 = load %struct.snd_seq_client**, %struct.snd_seq_client*** @clienttab, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.snd_seq_client*, %struct.snd_seq_client** %14, i64 %16
  %18 = load %struct.snd_seq_client*, %struct.snd_seq_client** %17, align 8
  store %struct.snd_seq_client* %18, %struct.snd_seq_client** %2, align 8
  br label %19

19:                                               ; preds = %13, %10
  %20 = load %struct.snd_seq_client*, %struct.snd_seq_client** %2, align 8
  ret %struct.snd_seq_client* %20
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
