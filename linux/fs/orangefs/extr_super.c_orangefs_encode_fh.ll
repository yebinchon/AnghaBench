; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_encode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.orangefs_object_kref = type { i8, i32 }
%struct.TYPE_2__ = type { %struct.orangefs_object_kref }

@.str = private unnamed_addr constant [37 x i8] c"fh buffer is too small for encoding\0A\00", align 1
@GOSSIP_SUPER_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Encoding fh: handle %pU, fsid %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Encoding parent: handle %pU, fsid %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32*, %struct.inode*)* @orangefs_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_encode_fh(%struct.inode* %0, i8* %1, i32* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.orangefs_object_kref, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %8, align 8
  %13 = icmp ne %struct.inode* %12, null
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 10, i32 5
  store i32 %15, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = call i32 @gossip_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  store i32 255, i32* %10, align 4
  br label %66

24:                                               ; preds = %4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call %struct.TYPE_2__* @ORANGEFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast %struct.orangefs_object_kref* %11 to i8*
  %29 = bitcast %struct.orangefs_object_kref* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 8, i1 false)
  %30 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %11, i32 0, i32 1
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @ORANGEFS_khandle_to(i32* %30, i8* %31, i32 16)
  %33 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %11, i32 0, i32 0
  %34 = load i8, i8* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  store i8 %34, i8* %36, align 1
  %37 = load i32, i32* @GOSSIP_SUPER_DEBUG, align 4
  %38 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %11, i32 0, i32 1
  %39 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %11, i32 0, i32 0
  %40 = load i8, i8* %39, align 4
  %41 = call i32 @gossip_debug(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %38, i8 signext %40)
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = icmp ne %struct.inode* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %24
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = call %struct.TYPE_2__* @ORANGEFS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = bitcast %struct.orangefs_object_kref* %11 to i8*
  %49 = bitcast %struct.orangefs_object_kref* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 8, i1 false)
  %50 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %11, i32 0, i32 1
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 20
  %53 = call i32 @ORANGEFS_khandle_to(i32* %50, i8* %52, i32 16)
  %54 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %11, i32 0, i32 0
  %55 = load i8, i8* %54, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 9
  store i8 %55, i8* %57, align 1
  store i32 2, i32* %10, align 4
  %58 = load i32, i32* @GOSSIP_SUPER_DEBUG, align 4
  %59 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %11, i32 0, i32 1
  %60 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %11, i32 0, i32 0
  %61 = load i8, i8* %60, align 4
  %62 = call i32 @gossip_debug(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32* %59, i8 signext %61)
  br label %63

63:                                               ; preds = %44, %24
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %20
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @gossip_err(i8*) #1

declare dso_local %struct.TYPE_2__* @ORANGEFS_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ORANGEFS_khandle_to(i32*, i8*, i32) #1

declare dso_local i32 @gossip_debug(i32, i8*, i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
