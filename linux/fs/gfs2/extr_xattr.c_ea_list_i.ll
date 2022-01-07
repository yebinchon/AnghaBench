; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_list_i.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_list_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i32, i32 }
%struct.ea_list = type { i32, %struct.gfs2_ea_request* }
%struct.gfs2_ea_request = type { i32, i64* }

@GFS2_EATYPE_UNUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"user.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"system.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)* @ea_list_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_list_i(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_ea_header*, align 8
  %10 = alloca %struct.gfs2_ea_header*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ea_list*, align 8
  %13 = alloca %struct.gfs2_ea_request*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header** %9, align 8
  store %struct.gfs2_ea_header* %3, %struct.gfs2_ea_header** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.ea_list*
  store %struct.ea_list* %18, %struct.ea_list** %12, align 8
  %19 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %20 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %19, i32 0, i32 1
  %21 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %20, align 8
  store %struct.gfs2_ea_request* %21, %struct.gfs2_ea_request** %13, align 8
  %22 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %23 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFS2_EATYPE_UNUSED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %107

28:                                               ; preds = %5
  %29 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %30 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %35 [
    i32 128, label %32
    i32 129, label %33
    i32 130, label %34
  ]

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i32 5, i32* %16, align 4
  br label %37

33:                                               ; preds = %28
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  store i32 7, i32* %16, align 4
  br label %37

34:                                               ; preds = %28
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  store i32 9, i32* %16, align 4
  br label %37

35:                                               ; preds = %28
  %36 = call i32 (...) @BUG()
  br label %37

37:                                               ; preds = %35, %34, %33, %32
  %38 = load i32, i32* %16, align 4
  %39 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %40 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %38, %41
  %43 = add i32 %42, 1
  store i32 %43, i32* %14, align 4
  %44 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  %45 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %37
  %49 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %50 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = add i32 %51, %52
  %54 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  %55 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ugt i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @ERANGE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %107

61:                                               ; preds = %48
  %62 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  %63 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %66 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %64, i64 %68
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @memcpy(i64* %69, i8* %70, i32 %71)
  %73 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  %74 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %77 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %75, i64 %79
  %81 = load i32, i32* %16, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %85 = call i8* @GFS2_EA2NAME(%struct.gfs2_ea_header* %84)
  %86 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %87 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i64* %83, i8* %85, i32 %88)
  %90 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  %91 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %94 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = add i32 %95, %96
  %98 = sub i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %92, i64 %99
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %61, %37
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %104 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add i32 %105, %102
  store i32 %106, i32* %104, align 8
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %101, %58, %27
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i8* @GFS2_EA2NAME(%struct.gfs2_ea_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
