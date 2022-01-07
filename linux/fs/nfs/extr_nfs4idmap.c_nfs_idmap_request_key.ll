; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_request_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_request_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.idmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@EAGAIN = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@key_type_id_resolver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@key_type_id_resolver_legacy = common dso_local global i32 0, align 4
@KEY_FLAG_ROOT_CAN_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (i8*, i64, i8*, %struct.idmap*)* @nfs_idmap_request_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @nfs_idmap_request_key(i8* %0, i64 %1, i8* %2, %struct.idmap* %3) #0 {
  %5 = alloca %struct.key*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.idmap*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.idmap* %3, %struct.idmap** %9, align 8
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.key* @ERR_PTR(i32 %14)
  store %struct.key* %15, %struct.key** %11, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i32 @nfs_idmap_get_desc(i8* %16, i64 %17, i8* %18, i32 %20, i8** %10)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = call %struct.key* @ERR_PTR(i32 %25)
  store %struct.key* %26, %struct.key** %5, align 8
  br label %69

27:                                               ; preds = %4
  %28 = load %struct.idmap*, %struct.idmap** %9, align 8
  %29 = getelementptr inbounds %struct.idmap, %struct.idmap* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.idmap*, %struct.idmap** %9, align 8
  %34 = getelementptr inbounds %struct.idmap, %struct.idmap* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, @init_user_ns
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %27
  %40 = load i8*, i8** %10, align 8
  %41 = call %struct.key* @request_key(i32* @key_type_id_resolver, i8* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.key* %41, %struct.key** %11, align 8
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.key*, %struct.key** %11, align 8
  %44 = call i64 @IS_ERR(%struct.key* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.idmap*, %struct.idmap** %9, align 8
  %48 = getelementptr inbounds %struct.idmap, %struct.idmap* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.idmap*, %struct.idmap** %9, align 8
  %52 = call %struct.key* @request_key_with_auxdata(i32* @key_type_id_resolver_legacy, i8* %50, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, %struct.idmap* %51)
  store %struct.key* %52, %struct.key** %11, align 8
  %53 = load %struct.idmap*, %struct.idmap** %9, align 8
  %54 = getelementptr inbounds %struct.idmap, %struct.idmap* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %46, %42
  %57 = load %struct.key*, %struct.key** %11, align 8
  %58 = call i64 @IS_ERR(%struct.key* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @KEY_FLAG_ROOT_CAN_INVAL, align 4
  %62 = load %struct.key*, %struct.key** %11, align 8
  %63 = getelementptr inbounds %struct.key, %struct.key* %62, i32 0, i32 0
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %60, %56
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load %struct.key*, %struct.key** %11, align 8
  store %struct.key* %68, %struct.key** %5, align 8
  br label %69

69:                                               ; preds = %65, %24
  %70 = load %struct.key*, %struct.key** %5, align 8
  ret %struct.key* %70
}

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local i32 @nfs_idmap_get_desc(i8*, i64, i8*, i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.key* @request_key(i32*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.key* @request_key_with_auxdata(i32*, i8*, i32*, i8*, i32, %struct.idmap*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
