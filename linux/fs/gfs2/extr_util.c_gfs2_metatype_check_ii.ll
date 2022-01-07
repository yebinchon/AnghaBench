; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_util.c_gfs2_metatype_check_ii.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_util.c_gfs2_metatype_check_ii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [106 x i8] c"fatal: invalid metadata block\0A  bh = %llu (type: exp=%u, found=%u)\0A  function = %s, file = %s, line = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_metatype_check_ii(%struct.gfs2_sbd* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @gfs2_lm_withdraw(%struct.gfs2_sbd* %16, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %20, i32 %21, i8* %22, i8* %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 -1, i32 -2
  ret i32 %29
}

declare dso_local i32 @gfs2_lm_withdraw(%struct.gfs2_sbd*, i8*, i64, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
