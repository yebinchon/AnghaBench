; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_filename_parentat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_filename_parentat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filename = type { i32 }
%struct.path = type { i32 }
%struct.qstr = type { i32 }
%struct.nameidata = type { i32, %struct.qstr }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LOOKUP_REVAL = common dso_local global i32 0, align 4
@AUDIT_INODE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filename* (i32, %struct.filename*, i32, %struct.path*, %struct.qstr*, i32*)* @filename_parentat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filename* @filename_parentat(i32 %0, %struct.filename* %1, i32 %2, %struct.path* %3, %struct.qstr* %4, i32* %5) #0 {
  %7 = alloca %struct.filename*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.filename*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.path*, align 8
  %12 = alloca %struct.qstr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nameidata, align 4
  store i32 %0, i32* %8, align 4
  store %struct.filename* %1, %struct.filename** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.path* %3, %struct.path** %11, align 8
  store %struct.qstr* %4, %struct.qstr** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.filename*, %struct.filename** %9, align 8
  %17 = call i64 @IS_ERR(%struct.filename* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load %struct.filename*, %struct.filename** %9, align 8
  store %struct.filename* %20, %struct.filename** %7, align 8
  br label %84

21:                                               ; preds = %6
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.filename*, %struct.filename** %9, align 8
  %24 = call i32 @set_nameidata(%struct.nameidata* %15, i32 %22, %struct.filename* %23)
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @LOOKUP_RCU, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.path*, %struct.path** %11, align 8
  %29 = call i32 @path_parentat(%struct.nameidata* %15, i32 %27, %struct.path* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @ECHILD, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.path*, %struct.path** %11, align 8
  %40 = call i32 @path_parentat(%struct.nameidata* %15, i32 %38, %struct.path* %39)
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %37, %21
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @ESTALE, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @LOOKUP_REVAL, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.path*, %struct.path** %11, align 8
  %54 = call i32 @path_parentat(%struct.nameidata* %15, i32 %52, %struct.path* %53)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %49, %41
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @likely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load %struct.qstr*, %struct.qstr** %12, align 8
  %64 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 1
  %65 = bitcast %struct.qstr* %63 to i8*
  %66 = bitcast %struct.qstr* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.filename*, %struct.filename** %9, align 8
  %71 = load %struct.path*, %struct.path** %11, align 8
  %72 = getelementptr inbounds %struct.path, %struct.path* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AUDIT_INODE_PARENT, align 4
  %75 = call i32 @audit_inode(%struct.filename* %70, i32 %73, i32 %74)
  br label %81

76:                                               ; preds = %55
  %77 = load %struct.filename*, %struct.filename** %9, align 8
  %78 = call i32 @putname(%struct.filename* %77)
  %79 = load i32, i32* %14, align 4
  %80 = call %struct.filename* @ERR_PTR(i32 %79)
  store %struct.filename* %80, %struct.filename** %9, align 8
  br label %81

81:                                               ; preds = %76, %62
  %82 = call i32 (...) @restore_nameidata()
  %83 = load %struct.filename*, %struct.filename** %9, align 8
  store %struct.filename* %83, %struct.filename** %7, align 8
  br label %84

84:                                               ; preds = %81, %19
  %85 = load %struct.filename*, %struct.filename** %7, align 8
  ret %struct.filename* %85
}

declare dso_local i64 @IS_ERR(%struct.filename*) #1

declare dso_local i32 @set_nameidata(%struct.nameidata*, i32, %struct.filename*) #1

declare dso_local i32 @path_parentat(%struct.nameidata*, i32, %struct.path*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @audit_inode(%struct.filename*, i32, i32) #1

declare dso_local i32 @putname(%struct.filename*) #1

declare dso_local %struct.filename* @ERR_PTR(i32) #1

declare dso_local i32 @restore_nameidata(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
