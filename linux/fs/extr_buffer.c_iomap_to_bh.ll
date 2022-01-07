; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_iomap_to_bh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_iomap_to_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.buffer_head = type { i64, i32 }
%struct.iomap = type { i64, i64, i32, i32, i64, i32 }

@IOMAP_F_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64, %struct.buffer_head*, %struct.iomap*)* @iomap_to_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomap_to_bh(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, %struct.iomap* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.iomap*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store %struct.iomap* %3, %struct.iomap** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = shl i64 %10, %13
  store i64 %14, i64* %9, align 8
  %15 = load %struct.iomap*, %struct.iomap** %8, align 8
  %16 = getelementptr inbounds %struct.iomap, %struct.iomap* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.iomap*, %struct.iomap** %8, align 8
  %22 = getelementptr inbounds %struct.iomap, %struct.iomap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.iomap*, %struct.iomap** %8, align 8
  %25 = getelementptr inbounds %struct.iomap, %struct.iomap* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = icmp sge i64 %20, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.iomap*, %struct.iomap** %8, align 8
  %32 = getelementptr inbounds %struct.iomap, %struct.iomap* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %104 [
    i32 130, label %34
    i32 131, label %47
    i32 128, label %66
    i32 129, label %71
  ]

34:                                               ; preds = %4
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = call i32 @buffer_uptodate(%struct.buffer_head* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = call i64 @i_size_read(%struct.inode* %40)
  %42 = icmp sge i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %34
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %45 = call i32 @set_buffer_new(%struct.buffer_head* %44)
  br label %46

46:                                               ; preds = %43, %38
  br label %104

47:                                               ; preds = %4
  %48 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %49 = call i32 @buffer_uptodate(%struct.buffer_head* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i64 @i_size_read(%struct.inode* %53)
  %55 = icmp sge i64 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %47
  %57 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %58 = call i32 @set_buffer_new(%struct.buffer_head* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %61 = call i32 @set_buffer_uptodate(%struct.buffer_head* %60)
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %63 = call i32 @set_buffer_mapped(%struct.buffer_head* %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %65 = call i32 @set_buffer_delay(%struct.buffer_head* %64)
  br label %104

66:                                               ; preds = %4
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = call i32 @set_buffer_new(%struct.buffer_head* %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %70 = call i32 @set_buffer_unwritten(%struct.buffer_head* %69)
  br label %71

71:                                               ; preds = %4, %66
  %72 = load %struct.iomap*, %struct.iomap** %8, align 8
  %73 = getelementptr inbounds %struct.iomap, %struct.iomap* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IOMAP_F_NEW, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = call i64 @i_size_read(%struct.inode* %80)
  %82 = icmp sge i64 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78, %71
  %84 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %85 = call i32 @set_buffer_new(%struct.buffer_head* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.iomap*, %struct.iomap** %8, align 8
  %88 = getelementptr inbounds %struct.iomap, %struct.iomap* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %89, %90
  %92 = load %struct.iomap*, %struct.iomap** %8, align 8
  %93 = getelementptr inbounds %struct.iomap, %struct.iomap* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = ashr i64 %95, %98
  %100 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %101 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %103 = call i32 @set_buffer_mapped(%struct.buffer_head* %102)
  br label %104

104:                                              ; preds = %4, %86, %59, %46
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_unwritten(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
