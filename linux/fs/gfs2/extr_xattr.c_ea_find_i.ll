; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_find_i.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_find_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i64, i64 }
%struct.ea_find = type { i64, i64, %struct.gfs2_ea_location*, i32 }
%struct.gfs2_ea_location = type { %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, %struct.buffer_head* }

@GFS2_EATYPE_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)* @ea_find_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_find_i(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_ea_header*, align 8
  %10 = alloca %struct.gfs2_ea_header*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ea_find*, align 8
  %13 = alloca %struct.gfs2_ea_location*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header** %9, align 8
  store %struct.gfs2_ea_header* %3, %struct.gfs2_ea_header** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to %struct.ea_find*
  store %struct.ea_find* %15, %struct.ea_find** %12, align 8
  %16 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %17 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GFS2_EATYPE_UNUSED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %66

22:                                               ; preds = %5
  %23 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %24 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ea_find*, %struct.ea_find** %12, align 8
  %27 = getelementptr inbounds %struct.ea_find, %struct.ea_find* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %22
  %31 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %32 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ea_find*, %struct.ea_find** %12, align 8
  %35 = getelementptr inbounds %struct.ea_find, %struct.ea_find* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %30
  %39 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %40 = call i32 @GFS2_EA2NAME(%struct.gfs2_ea_header* %39)
  %41 = load %struct.ea_find*, %struct.ea_find** %12, align 8
  %42 = getelementptr inbounds %struct.ea_find, %struct.ea_find* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %45 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @memcmp(i32 %40, i32 %43, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %38
  %50 = load %struct.ea_find*, %struct.ea_find** %12, align 8
  %51 = getelementptr inbounds %struct.ea_find, %struct.ea_find* %50, i32 0, i32 2
  %52 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %51, align 8
  store %struct.gfs2_ea_location* %52, %struct.gfs2_ea_location** %13, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %54 = call i32 @get_bh(%struct.buffer_head* %53)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %13, align 8
  %57 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %56, i32 0, i32 2
  store %struct.buffer_head* %55, %struct.buffer_head** %57, align 8
  %58 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %59 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %13, align 8
  %60 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %59, i32 0, i32 1
  store %struct.gfs2_ea_header* %58, %struct.gfs2_ea_header** %60, align 8
  %61 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %62 = load %struct.gfs2_ea_location*, %struct.gfs2_ea_location** %13, align 8
  %63 = getelementptr inbounds %struct.gfs2_ea_location, %struct.gfs2_ea_location* %62, i32 0, i32 0
  store %struct.gfs2_ea_header* %61, %struct.gfs2_ea_header** %63, align 8
  store i32 1, i32* %6, align 4
  br label %66

64:                                               ; preds = %38, %30
  br label %65

65:                                               ; preds = %64, %22
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %49, %21
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @GFS2_EA2NAME(%struct.gfs2_ea_header*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
