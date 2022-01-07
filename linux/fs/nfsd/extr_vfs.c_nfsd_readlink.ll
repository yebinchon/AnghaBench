; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_readlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.path = type { i32, i32 }

@done = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_readlink(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.path, align 4
  %13 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @done, align 4
  %15 = call i32 @DEFINE_DELAYED_CALL(i32 %14)
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %17 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %18 = load i32, i32* @S_IFLNK, align 4
  %19 = load i32, i32* @NFSD_MAY_NOP, align 4
  %20 = call i32 @fh_verify(%struct.svc_rqst* %16, %struct.svc_fh* %17, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %77

26:                                               ; preds = %4
  %27 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %28 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %35 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @d_is_symlink(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %26
  %47 = load i32, i32* @nfserr_inval, align 4
  store i32 %47, i32* %5, align 4
  br label %77

48:                                               ; preds = %26
  %49 = call i32 @touch_atime(%struct.path* %12)
  %50 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @vfs_get_link(i32 %51, i32* @done)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  %59 = call i32 @nfserrno(i32 %58)
  store i32 %59, i32* %5, align 4
  br label %77

60:                                               ; preds = %48
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @strlen(i8* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memcpy(i8* %71, i8* %72, i32 %74)
  %76 = call i32 @do_delayed_call(i32* @done)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %70, %56, %46, %24
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @DEFINE_DELAYED_CALL(i32) #1

declare dso_local i32 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @d_is_symlink(i32) #1

declare dso_local i32 @touch_atime(%struct.path*) #1

declare dso_local i8* @vfs_get_link(i32, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @do_delayed_call(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
