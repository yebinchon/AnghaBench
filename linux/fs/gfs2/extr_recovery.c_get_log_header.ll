; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_recovery.c_get_log_header.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_recovery.c_get_log_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32 }
%struct.gfs2_log_header_host = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_log_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_jdesc*, i32, %struct.gfs2_log_header_host*)* @get_log_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_log_header(%struct.gfs2_jdesc* %0, i32 %1, %struct.gfs2_log_header_host* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_jdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_log_header_host*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.gfs2_log_header_host* %2, %struct.gfs2_log_header_host** %7, align 8
  %11 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gfs2_sbd* @GFS2_SB(i32 %13)
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %8, align 8
  %15 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @gfs2_replay_read_block(%struct.gfs2_jdesc* %15, i32 %16, %struct.buffer_head** %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %3
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.gfs2_log_header*
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.gfs2_log_header_host*, %struct.gfs2_log_header_host** %7, align 8
  %30 = call i32 @__get_log_header(%struct.gfs2_sbd* %23, %struct.gfs2_log_header* %27, i32 %28, %struct.gfs2_log_header_host* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %32 = call i32 @brelse(%struct.buffer_head* %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %22, %20
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @gfs2_replay_read_block(%struct.gfs2_jdesc*, i32, %struct.buffer_head**) #1

declare dso_local i32 @__get_log_header(%struct.gfs2_sbd*, %struct.gfs2_log_header*, i32, %struct.gfs2_log_header_host*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
