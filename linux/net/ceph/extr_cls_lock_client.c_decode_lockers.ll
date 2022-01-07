; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_cls_lock_client.c_decode_lockers.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_cls_lock_client.c_decode_lockers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_locker = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"cls_lock_get_info_reply\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*, i8**, %struct.ceph_locker**, i32*)* @decode_lockers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_lockers(i8** %0, i8* %1, i32* %2, i8** %3, %struct.ceph_locker** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.ceph_locker**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store %struct.ceph_locker** %4, %struct.ceph_locker*** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @ceph_start_decoding(i8** %19, i8* %20, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %15)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %18, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %18, align 4
  store i32 %25, i32* %7, align 4
  br label %87

26:                                               ; preds = %6
  %27 = load i8**, i8*** %8, align 8
  %28 = call i32 @ceph_decode_32(i8** %27)
  %29 = load i32*, i32** %13, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_NOIO, align 4
  %33 = call %struct.ceph_locker* @kcalloc(i32 %31, i32 4, i32 %32)
  %34 = load %struct.ceph_locker**, %struct.ceph_locker*** %12, align 8
  store %struct.ceph_locker* %33, %struct.ceph_locker** %34, align 8
  %35 = load %struct.ceph_locker**, %struct.ceph_locker*** %12, align 8
  %36 = load %struct.ceph_locker*, %struct.ceph_locker** %35, align 8
  %37 = icmp ne %struct.ceph_locker* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %87

41:                                               ; preds = %26
  store i32 0, i32* %17, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %17, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.ceph_locker**, %struct.ceph_locker*** %12, align 8
  %51 = load %struct.ceph_locker*, %struct.ceph_locker** %50, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ceph_locker, %struct.ceph_locker* %51, i64 %53
  %55 = call i32 @decode_locker(i8** %48, i8* %49, %struct.ceph_locker* %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %80

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %42

63:                                               ; preds = %42
  %64 = load i8**, i8*** %8, align 8
  %65 = call i32 @ceph_decode_8(i8** %64)
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i8**, i8*** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* @GFP_NOIO, align 4
  %70 = call i8* @ceph_extract_encoded_string(i8** %67, i8* %68, i32* null, i32 %69)
  store i8* %70, i8** %16, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = call i64 @IS_ERR(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %18, align 4
  br label %80

77:                                               ; preds = %63
  %78 = load i8*, i8** %16, align 8
  %79 = load i8**, i8*** %11, align 8
  store i8* %78, i8** %79, align 8
  store i32 0, i32* %7, align 4
  br label %87

80:                                               ; preds = %74, %58
  %81 = load %struct.ceph_locker**, %struct.ceph_locker*** %12, align 8
  %82 = load %struct.ceph_locker*, %struct.ceph_locker** %81, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ceph_free_lockers(%struct.ceph_locker* %82, i32 %84)
  %86 = load i32, i32* %18, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %80, %77, %38, %24
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @ceph_start_decoding(i8**, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

declare dso_local %struct.ceph_locker* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @decode_locker(i8**, i8*, %struct.ceph_locker*) #1

declare dso_local i32 @ceph_decode_8(i8**) #1

declare dso_local i8* @ceph_extract_encoded_string(i8**, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @ceph_free_lockers(%struct.ceph_locker*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
