; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_process_ip_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_process_ip_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@MAX_IP_ADDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"IPADDR\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"NETMASK\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"GATEWAY\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DNS\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"IPV6ADDR\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"IPV6NETMASK\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"IPV6_DEFAULTGW\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"_%d\00", align 1
@HV_INVALIDARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @process_ip_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ip_string(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca [13 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %21 = trunc i64 %18 to i32
  %22 = call i32 @memset(i8* %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %122, %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %26 = mul nsw i32 %25, 2
  %27 = call i64 @parse_ip_val_buffer(i8* %24, i32* %15, i8* %20, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %125

29:                                               ; preds = %23
  %30 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %30, align 1
  %31 = call i64 @is_ipv4(i8* %20)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %47 [
    i32 129, label %35
    i32 128, label %38
    i32 130, label %41
    i32 131, label %44
  ]

35:                                               ; preds = %33
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %47

38:                                               ; preds = %33
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %47

41:                                               ; preds = %33
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %42, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %47

44:                                               ; preds = %33
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %33, %44, %41, %38, %35
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 131
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %51, i32 13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  br label %70

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 130
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %69

64:                                               ; preds = %58, %55
  %65 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %65, i32 13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  br label %69

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %69, %50
  br label %113

71:                                               ; preds = %29
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @expand_ipv6(i8* %20, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  switch i32 %76, label %89 [
    i32 129, label %77
    i32 128, label %80
    i32 130, label %83
    i32 131, label %86
  ]

77:                                               ; preds = %75
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %79 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %89

80:                                               ; preds = %75
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %82 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %89

83:                                               ; preds = %75
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %85 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %84, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %89

86:                                               ; preds = %75
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %87, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %75, %86, %83, %80, %77
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 131
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %93, i32 13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  br label %109

97:                                               ; preds = %89
  %98 = load i32, i32* %12, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %108

103:                                              ; preds = %97
  %104 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  %107 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %104, i32 13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  br label %108

108:                                              ; preds = %103, %100
  br label %109

109:                                              ; preds = %108, %92
  br label %112

110:                                              ; preds = %71
  %111 = load i32, i32* @HV_INVALIDARG, align 4
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %126

112:                                              ; preds = %109
  br label %113

113:                                              ; preds = %112, %70
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %116 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %117 = call i32 @kvp_write_file(i32* %114, i8* %115, i8* %116, i8* %20)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %126

122:                                              ; preds = %113
  %123 = trunc i64 %18 to i32
  %124 = call i32 @memset(i8* %20, i32 0, i32 %123)
  br label %23

125:                                              ; preds = %23
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %126

126:                                              ; preds = %125, %120, %110
  %127 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @parse_ip_val_buffer(i8*, i32*, i8*, i32) #2

declare dso_local i64 @is_ipv4(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @expand_ipv6(i8*, i32) #2

declare dso_local i32 @kvp_write_file(i32*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
