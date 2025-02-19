; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify.h_fanotify_fid_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify.h_fanotify_fid_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fanotify_fid = type { i8*, i8* }

@FANOTIFY_INLINE_FH_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fanotify_fid*, i32)* @fanotify_fid_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fanotify_fid_fh(%struct.fanotify_fid* %0, i32 %1) #0 {
  %3 = alloca %struct.fanotify_fid*, align 8
  %4 = alloca i32, align 4
  store %struct.fanotify_fid* %0, %struct.fanotify_fid** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FANOTIFY_INLINE_FH_LEN, align 4
  %7 = icmp ule i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.fanotify_fid*, %struct.fanotify_fid** %3, align 8
  %10 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.fanotify_fid*, %struct.fanotify_fid** %3, align 8
  %14 = getelementptr inbounds %struct.fanotify_fid, %struct.fanotify_fid* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i8* [ %11, %8 ], [ %15, %12 ]
  ret i8* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
