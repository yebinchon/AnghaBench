; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_show.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32, i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"depth=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"busy=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cleared=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"bits_per_word=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"map_nr=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbitmap_show(%struct.sbitmap* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.sbitmap*, align 8
  %4 = alloca %struct.seq_file*, align 8
  store %struct.sbitmap* %0, %struct.sbitmap** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %6 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %7 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %12 = call i32 @sbitmap_weight(%struct.sbitmap* %11)
  %13 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %14 = call i32 @sbitmap_cleared(%struct.sbitmap* %13)
  %15 = sub i32 %12, %14
  %16 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %19 = call i32 @sbitmap_cleared(%struct.sbitmap* %18)
  %20 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %23 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %29 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @sbitmap_weight(%struct.sbitmap*) #1

declare dso_local i32 @sbitmap_cleared(%struct.sbitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
