; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-proc.c_wireless_dev_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-proc.c_wireless_dev_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [163 x i8] c"Inter-| sta-|   Quality        |   Discarded packets               | Missed | WE\0A face | tus | link level noise |  nwid  crypt   frag  retry   misc | beacon | %d\0A\00", align 1
@WIRELESS_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @wireless_dev_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wireless_dev_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %8 = icmp eq i8* %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load i32, i32* @WIRELESS_EXT, align 4
  %12 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @wireless_seq_printf_stats(%struct.seq_file* %14, i8* %15)
  br label %17

17:                                               ; preds = %13, %9
  ret i32 0
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @wireless_seq_printf_stats(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
