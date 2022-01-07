; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs4_replace_transport.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs4_replace_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs4_fs_locations = type { i32, %struct.nfs4_fs_location* }
%struct.nfs4_fs_location = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_replace_transport(%struct.nfs_server* %0, %struct.nfs4_fs_locations* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs4_fs_locations*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs4_fs_location*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.nfs4_fs_locations* %1, %struct.nfs4_fs_locations** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.nfs4_fs_locations*, %struct.nfs4_fs_locations** %4, align 8
  %13 = icmp eq %struct.nfs4_fs_locations* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.nfs4_fs_locations*, %struct.nfs4_fs_locations** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_fs_locations, %struct.nfs4_fs_locations* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  br label %78

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @GFP_USER, align 4
  %24 = call i64 @__get_free_page(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %78

29:                                               ; preds = %20
  %30 = load i32, i32* @GFP_USER, align 4
  %31 = call i64 @__get_free_page(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %78

36:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %74, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.nfs4_fs_locations*, %struct.nfs4_fs_locations** %4, align 8
  %40 = getelementptr inbounds %struct.nfs4_fs_locations, %struct.nfs4_fs_locations* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %37
  %44 = load %struct.nfs4_fs_locations*, %struct.nfs4_fs_locations** %4, align 8
  %45 = getelementptr inbounds %struct.nfs4_fs_locations, %struct.nfs4_fs_locations* %44, i32 0, i32 1
  %46 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %46, i64 %48
  store %struct.nfs4_fs_location* %49, %struct.nfs4_fs_location** %9, align 8
  %50 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %51 = icmp eq %struct.nfs4_fs_location* %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %43
  %53 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %54 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %59 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %52, %43
  br label %74

64:                                               ; preds = %57
  %65 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %69 = call i32 @nfs4_try_replacing_one_location(%struct.nfs_server* %65, i8* %66, i8* %67, %struct.nfs4_fs_location* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %77

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %37

77:                                               ; preds = %72, %37
  br label %78

78:                                               ; preds = %77, %35, %28, %19
  %79 = load i8*, i8** %5, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = call i32 @free_page(i64 %80)
  %82 = load i8*, i8** %6, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = call i32 @free_page(i64 %83)
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @nfs4_try_replacing_one_location(%struct.nfs_server*, i8*, i8*, %struct.nfs4_fs_location*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
