; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_get_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type opaque
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (%struct.inode*, i32)* }

@current = common dso_local global i32 0, align 4
@ACL_NOT_CACHED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.posix_acl**, align 8
  %8 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @get_cached_acl(%struct.inode* %9, i32 %10)
  %12 = bitcast i8* %11 to %struct.posix_acl*
  store %struct.posix_acl* %12, %struct.posix_acl** %8, align 8
  %13 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %14 = bitcast %struct.posix_acl* %13 to i8*
  %15 = call i32 @is_uncached_acl(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %18, %struct.posix_acl** %3, align 8
  br label %92

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @IS_POSIXACL(%struct.inode* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %92

24:                                               ; preds = %19
  %25 = load i32, i32* @current, align 4
  %26 = call i8* @uncached_acl_sentinel(i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i8** @acl_by_type(%struct.inode* %27, i32 %28)
  %30 = bitcast i8** %29 to %struct.posix_acl**
  store %struct.posix_acl** %30, %struct.posix_acl*** %7, align 8
  %31 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  %32 = bitcast %struct.posix_acl** %31 to i8**
  %33 = load i8*, i8** @ACL_NOT_CACHED, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @cmpxchg(i8** %32, i8* %33, i8* %34)
  %36 = load i8*, i8** @ACL_NOT_CACHED, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8* (%struct.inode*, i32)*, i8* (%struct.inode*, i32)** %43, align 8
  %45 = icmp ne i8* (%struct.inode*, i32)* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @set_cached_acl(%struct.inode* %47, i32 %48, i32* null)
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %92

50:                                               ; preds = %39
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8* (%struct.inode*, i32)*, i8* (%struct.inode*, i32)** %54, align 8
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i8* %55(%struct.inode* %56, i32 %57)
  %59 = bitcast i8* %58 to %struct.posix_acl*
  store %struct.posix_acl* %59, %struct.posix_acl** %8, align 8
  %60 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %61 = bitcast %struct.posix_acl* %60 to i8*
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  %66 = bitcast %struct.posix_acl** %65 to i8**
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** @ACL_NOT_CACHED, align 8
  %69 = call i8* @cmpxchg(i8** %66, i8* %67, i8* %68)
  %70 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %70, %struct.posix_acl** %3, align 8
  br label %92

71:                                               ; preds = %50
  %72 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %73 = bitcast %struct.posix_acl* %72 to i8*
  %74 = call i32 @posix_acl_dup(i8* %73)
  %75 = load %struct.posix_acl**, %struct.posix_acl*** %7, align 8
  %76 = bitcast %struct.posix_acl** %75 to i8**
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %79 = bitcast %struct.posix_acl* %78 to i8*
  %80 = call i8* @cmpxchg(i8** %76, i8* %77, i8* %79)
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %71
  %87 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %88 = bitcast %struct.posix_acl* %87 to i8*
  %89 = call i32 @posix_acl_release(i8* %88)
  br label %90

90:                                               ; preds = %86, %71
  %91 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* %91, %struct.posix_acl** %3, align 8
  br label %92

92:                                               ; preds = %90, %64, %46, %23, %17
  %93 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %93
}

declare dso_local i8* @get_cached_acl(%struct.inode*, i32) #1

declare dso_local i32 @is_uncached_acl(i8*) #1

declare dso_local i32 @IS_POSIXACL(%struct.inode*) #1

declare dso_local i8* @uncached_acl_sentinel(i32) #1

declare dso_local i8** @acl_by_type(%struct.inode*, i32) #1

declare dso_local i8* @cmpxchg(i8**, i8*, i8*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @posix_acl_dup(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @posix_acl_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
