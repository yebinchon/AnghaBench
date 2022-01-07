; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_read_and_verify_message.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4idmap.c_nfs_idmap_read_and_verify_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_msg = type { i64, i32, i8*, i32 }
%struct.key = type { i32 }

@NFS_UINT_MAXLEN = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmap_msg*, %struct.idmap_msg*, %struct.key*, %struct.key*)* @nfs_idmap_read_and_verify_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_idmap_read_and_verify_message(%struct.idmap_msg* %0, %struct.idmap_msg* %1, %struct.key* %2, %struct.key* %3) #0 {
  %5 = alloca %struct.idmap_msg*, align 8
  %6 = alloca %struct.idmap_msg*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.idmap_msg* %0, %struct.idmap_msg** %5, align 8
  store %struct.idmap_msg* %1, %struct.idmap_msg** %6, align 8
  store %struct.key* %2, %struct.key** %7, align 8
  store %struct.key* %3, %struct.key** %8, align 8
  %13 = load i32, i32* @NFS_UINT_MAXLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @ENOKEY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load %struct.idmap_msg*, %struct.idmap_msg** %6, align 8
  %20 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.idmap_msg*, %struct.idmap_msg** %5, align 8
  %23 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = load %struct.idmap_msg*, %struct.idmap_msg** %6, align 8
  %28 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.idmap_msg*, %struct.idmap_msg** %5, align 8
  %31 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26, %4
  br label %86

35:                                               ; preds = %26
  %36 = load %struct.idmap_msg*, %struct.idmap_msg** %5, align 8
  %37 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %82 [
    i32 128, label %39
    i32 129, label %61
  ]

39:                                               ; preds = %35
  %40 = load %struct.idmap_msg*, %struct.idmap_msg** %6, align 8
  %41 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.idmap_msg*, %struct.idmap_msg** %5, align 8
  %44 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %42, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %85

49:                                               ; preds = %39
  %50 = load %struct.idmap_msg*, %struct.idmap_msg** %5, align 8
  %51 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = trunc i64 %14 to i32
  %54 = call i32 @nfs_map_numeric_to_string(i32 %52, i8* %16, i32 %53)
  %55 = add nsw i32 1, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %11, align 8
  %57 = load %struct.key*, %struct.key** %7, align 8
  %58 = load %struct.key*, %struct.key** %8, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @nfs_idmap_instantiate(%struct.key* %57, %struct.key* %58, i8* %16, i64 %59)
  store i32 %60, i32* %12, align 4
  br label %85

61:                                               ; preds = %35
  %62 = load %struct.idmap_msg*, %struct.idmap_msg** %6, align 8
  %63 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.idmap_msg*, %struct.idmap_msg** %5, align 8
  %66 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %85

70:                                               ; preds = %61
  %71 = load %struct.idmap_msg*, %struct.idmap_msg** %5, align 8
  %72 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strlen(i8* %73)
  store i64 %74, i64* %11, align 8
  %75 = load %struct.key*, %struct.key** %7, align 8
  %76 = load %struct.key*, %struct.key** %8, align 8
  %77 = load %struct.idmap_msg*, %struct.idmap_msg** %5, align 8
  %78 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @nfs_idmap_instantiate(%struct.key* %75, %struct.key* %76, i8* %79, i64 %80)
  store i32 %81, i32* %12, align 4
  br label %85

82:                                               ; preds = %35
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %82, %70, %69, %49, %48
  br label %86

86:                                               ; preds = %85, %34
  %87 = load i32, i32* %12, align 4
  %88 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %88)
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @nfs_map_numeric_to_string(i32, i8*, i32) #2

declare dso_local i32 @nfs_idmap_instantiate(%struct.key*, %struct.key*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
