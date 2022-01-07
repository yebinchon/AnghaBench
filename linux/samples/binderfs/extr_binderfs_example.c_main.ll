; ModuleID = '/home/carl/AnghaBench/linux/samples/binderfs/extr_binderfs_example.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/binderfs/extr_binderfs_example.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binderfs_device = type { i8*, i32, i32, i32 }

@CLONE_NEWNS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s - Failed to unshare mount namespace\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MS_REC = common dso_local global i32 0, align 4
@MS_PRIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s - Failed to mount / as private\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/dev/binderfs\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"%s - Failed to create binderfs mountpoint\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"binder\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s - Failed to mount binderfs\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"my-binder\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"/dev/binderfs/binder-control\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"%s - Failed to open binder-control device\0A\00", align 1
@BINDER_CTL_ADD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"%s - Failed to allocate new binder device\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"Allocated new binder device with major %d, minor %d, and name %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/dev/binderfs/my-binder\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"%s - Failed to delete binder device\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.binderfs_device, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast %struct.binderfs_device* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i32, i32* @CLONE_NEWNS, align 4
  %13 = call i32 @unshare(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i8* @strerror(i32 %18)
  %20 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = call i32 @exit(i32 %21) #4
  unreachable

23:                                               ; preds = %2
  %24 = load i32, i32* @MS_REC, align 4
  %25 = load i32, i32* @MS_PRIVATE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @mount(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 %26, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i8* @strerror(i32 %32)
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = call i32 @exit(i32 %35) #4
  unreachable

37:                                               ; preds = %23
  %38 = call i32 @mkdir(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 493)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, i32* @errno, align 4
  %43 = load i32, i32* @EEXIST, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  %49 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  %51 = call i32 @exit(i32 %50) #4
  unreachable

52:                                               ; preds = %41, %37
  %53 = call i32 @mount(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* @stderr, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i8* @strerror(i32 %58)
  %60 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @EXIT_FAILURE, align 4
  %62 = call i32 @exit(i32 %61) #4
  unreachable

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.binderfs_device, %struct.binderfs_device* %10, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %67 = call i32 @memcpy(i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @O_RDONLY, align 4
  %69 = load i32, i32* @O_CLOEXEC, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @open(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %63
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* @errno, align 4
  %77 = call i8* @strerror(i32 %76)
  %78 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @EXIT_FAILURE, align 4
  %80 = call i32 @exit(i32 %79) #4
  unreachable

81:                                               ; preds = %63
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @BINDER_CTL_ADD, align 4
  %84 = call i32 @ioctl(i32 %82, i32 %83, %struct.binderfs_device* %10)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @errno, align 4
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @close(i32 %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* @errno, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load i32, i32* @stderr, align 4
  %93 = load i32, i32* @errno, align 4
  %94 = call i8* @strerror(i32 %93)
  %95 = call i32 @fprintf(i32 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* @EXIT_FAILURE, align 4
  %97 = call i32 @exit(i32 %96) #4
  unreachable

98:                                               ; preds = %81
  %99 = getelementptr inbounds %struct.binderfs_device, %struct.binderfs_device* %10, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.binderfs_device, %struct.binderfs_device* %10, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.binderfs_device, %struct.binderfs_device* %10, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i32 %100, i32 %102, i8* %104)
  %106 = call i32 @unlink(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %98
  %110 = load i32, i32* @stderr, align 4
  %111 = load i32, i32* @errno, align 4
  %112 = call i8* @strerror(i32 %111)
  %113 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* %112)
  %114 = load i32, i32* @EXIT_FAILURE, align 4
  %115 = call i32 @exit(i32 %114) #4
  unreachable

116:                                              ; preds = %98
  %117 = load i32, i32* @EXIT_SUCCESS, align 4
  %118 = call i32 @exit(i32 %117) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @unshare(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @mount(i32*, i8*, i8*, i32, i32) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.binderfs_device*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @printf(i8*, i32, i32, i8*) #2

declare dso_local i32 @unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
