; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_nfs_dns_parse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dns_resolve.c_nfs_dns_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.nfs_dns_ent = type { i64, i8*, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.sockaddr = type { i32 }

@NFS_DNS_HOSTNAME_MAXLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @nfs_dns_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_dns_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfs_dns_ent, align 8
  %10 = alloca %struct.nfs_dns_ent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @NFS_DNS_HOSTNAME_MAXLEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 10
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %103

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 0, i8* %35, align 1
  %36 = trunc i64 %16 to i32
  %37 = call i64 @qword_get(i8** %5, i8* %18, i32 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %103

41:                                               ; preds = %30
  %42 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %43 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 4
  %47 = bitcast i32* %46 to %struct.sockaddr*
  %48 = call i64 @rpc_pton(i32 %44, i8* %18, i64 %45, %struct.sockaddr* %47, i32 4)
  %49 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = trunc i64 %16 to i32
  %51 = call i64 @qword_get(i8** %5, i8* %18, i32 %50)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %103

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 1
  store i8* %18, i8** %56, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 3
  store i64 %57, i64* %58, align 8
  %59 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 2
  %60 = call i32 @memset(%struct.TYPE_3__* %59, i32 0, i32 16)
  %61 = call i64 @get_uint(i8** %5, i32* %11)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %103

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %103

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = call i64 (...) @seconds_since_boot()
  %72 = add nsw i64 %70, %71
  %73 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  %77 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %78 = call %struct.nfs_dns_ent* @nfs_dns_lookup(%struct.cache_detail* %77, %struct.nfs_dns_ent* %9)
  store %struct.nfs_dns_ent* %78, %struct.nfs_dns_ent** %10, align 8
  %79 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %80 = icmp eq %struct.nfs_dns_ent* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %103

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @CACHE_NEGATIVE, align 4
  %88 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %9, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %82
  %92 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %93 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %94 = call %struct.nfs_dns_ent* @nfs_dns_update(%struct.cache_detail* %92, %struct.nfs_dns_ent* %9, %struct.nfs_dns_ent* %93)
  store %struct.nfs_dns_ent* %94, %struct.nfs_dns_ent** %10, align 8
  %95 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %96 = icmp eq %struct.nfs_dns_ent* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %103

98:                                               ; preds = %91
  store i32 0, i32* %13, align 4
  %99 = load %struct.nfs_dns_ent*, %struct.nfs_dns_ent** %10, align 8
  %100 = getelementptr inbounds %struct.nfs_dns_ent, %struct.nfs_dns_ent* %99, i32 0, i32 2
  %101 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %102 = call i32 @cache_put(%struct.TYPE_3__* %100, %struct.cache_detail* %101)
  br label %103

103:                                              ; preds = %98, %97, %81, %67, %63, %54, %40, %29
  %104 = load i32, i32* %13, align 4
  %105 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %105)
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @qword_get(i8**, i8*, i32) #2

declare dso_local i64 @rpc_pton(i32, i8*, i64, %struct.sockaddr*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i64 @get_uint(i8**, i32*) #2

declare dso_local i64 @seconds_since_boot(...) #2

declare dso_local %struct.nfs_dns_ent* @nfs_dns_lookup(%struct.cache_detail*, %struct.nfs_dns_ent*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local %struct.nfs_dns_ent* @nfs_dns_update(%struct.cache_detail*, %struct.nfs_dns_ent*, %struct.nfs_dns_ent*) #2

declare dso_local i32 @cache_put(%struct.TYPE_3__*, %struct.cache_detail*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
