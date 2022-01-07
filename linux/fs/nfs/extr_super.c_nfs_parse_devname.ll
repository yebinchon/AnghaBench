; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_parse_devname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_parse_devname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"NFS: device name not specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"NFS: MNTPATH: '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"NFS: device name not in host:path format\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"NFS: not enough memory to parse device name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"NFS: server hostname too long\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"NFS: export pathname too long\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64, i8**, i64)* @nfs_parse_devname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_parse_devname(i8* %0, i8** %1, i64 %2, i8** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %17, %5
  %23 = phi i1 [ true, %5 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @MOUNT, align 4
  %29 = call i32 (i32, i8*, ...) @dfprintk(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %143

32:                                               ; preds = %22
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 91
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 93)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 58
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37
  br label %123

50:                                               ; preds = %43
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  store i64 %55, i64* %12, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %13, align 8
  br label %85

58:                                               ; preds = %32
  %59 = load i8*, i8** %7, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 58)
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %123

64:                                               ; preds = %58
  %65 = load i8*, i8** %13, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  store i64 %69, i64* %12, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 44)
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %64
  %75 = load i8*, i8** %14, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i8*, i8** %14, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  store i64 %83, i64* %12, align 8
  br label %84

84:                                               ; preds = %78, %74, %64
  br label %85

85:                                               ; preds = %84, %50
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %133

90:                                               ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i8* @kstrndup(i8* %91, i64 %92, i32 %93)
  %95 = load i8**, i8*** %8, align 8
  store i8* %94, i8** %95, align 8
  %96 = load i8**, i8*** %8, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %128

100:                                              ; preds = %90
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %13, align 8
  %103 = call i64 @strlen(i8* %102)
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %138

108:                                              ; preds = %100
  %109 = load i8*, i8** %13, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i8* @kstrndup(i8* %109, i64 %110, i32 %111)
  %113 = load i8**, i8*** %10, align 8
  store i8* %112, i8** %113, align 8
  %114 = load i8**, i8*** %10, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %108
  br label %128

118:                                              ; preds = %108
  %119 = load i32, i32* @MOUNT, align 4
  %120 = load i8**, i8*** %10, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i32, i8*, ...) @dfprintk(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  store i32 0, i32* %6, align 4
  br label %143

123:                                              ; preds = %63, %49
  %124 = load i32, i32* @MOUNT, align 4
  %125 = call i32 (i32, i8*, ...) @dfprintk(i32 %124, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %143

128:                                              ; preds = %117, %99
  %129 = load i32, i32* @MOUNT, align 4
  %130 = call i32 (i32, i8*, ...) @dfprintk(i32 %129, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  br label %143

133:                                              ; preds = %89
  %134 = load i32, i32* @MOUNT, align 4
  %135 = call i32 (i32, i8*, ...) @dfprintk(i32 %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i32, i32* @ENAMETOOLONG, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  br label %143

138:                                              ; preds = %107
  %139 = load i32, i32* @MOUNT, align 4
  %140 = call i32 (i32, i8*, ...) @dfprintk(i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32, i32* @ENAMETOOLONG, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %138, %133, %128, %123, %118, %27
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dfprintk(i32, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
