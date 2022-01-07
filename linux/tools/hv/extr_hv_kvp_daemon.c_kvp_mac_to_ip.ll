; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_mac_to_ip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_mac_to_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_ipaddr_value = type { i64, i64 }
%struct.dirent = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@HV_E_FAIL = common dso_local global i32 0, align 4
@KVP_NET_DIR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"%s%s/address\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@KVP_OP_GET_IP_INFO = common dso_local global i32 0, align 4
@MAX_IP_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_kvp_ipaddr_value*)* @kvp_mac_to_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_mac_to_ip(%struct.hv_kvp_ipaddr_value* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_kvp_ipaddr_value*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hv_kvp_ipaddr_value* %0, %struct.hv_kvp_ipaddr_value** %3, align 8
  %17 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %3, align 8
  %18 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %4, align 8
  store i8* null, i8** %10, align 8
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @HV_E_FAIL, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i8*, i8** @KVP_NET_DIR, align 8
  %27 = call i32* @opendir(i8* %26)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @HV_E_FAIL, align 4
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %119

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %114, %96, %89, %56, %47, %32
  %34 = load i32*, i32** %5, align 8
  %35 = call %struct.dirent* @readdir(i32* %34)
  store %struct.dirent* %35, %struct.dirent** %6, align 8
  %36 = icmp ne %struct.dirent* %35, null
  br i1 %36, label %37, label %115

37:                                               ; preds = %33
  %38 = trunc i64 %22 to i32
  %39 = load i8*, i8** @KVP_NET_DIR, align 8
  %40 = load %struct.dirent*, %struct.dirent** %6, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @snprintf(i8* %24, i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %42)
  %44 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %33

48:                                               ; preds = %37
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %50 = load i32*, i32** %7, align 8
  %51 = call i8* @fgets(i8* %49, i32 256, i32* %50)
  store i8* %51, i8** %8, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @fclose(i32* %52)
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %33

57:                                               ; preds = %48
  %58 = load i8*, i8** %8, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 10)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i8*, i8** %9, align 8
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %62, %57
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = call signext i8 @toupper(i8 signext %75)
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %76, i8* %80, align 1
  br label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %14, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i64 @strcmp(i8* %85, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %33

90:                                               ; preds = %84
  %91 = load %struct.dirent*, %struct.dirent** %6, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %33

97:                                               ; preds = %90
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* @KVP_OP_GET_IP_INFO, align 4
  %100 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %3, align 8
  %101 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %102 = mul nsw i32 %101, 2
  %103 = call i32 @kvp_get_ip_info(i32 0, i8* %98, i32 %99, %struct.hv_kvp_ipaddr_value* %100, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %97
  %107 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %3, align 8
  %108 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @strlen(i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %115

114:                                              ; preds = %106, %97
  br label %33

115:                                              ; preds = %113, %33
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @closedir(i32* %116)
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %119

119:                                              ; preds = %115, %30
  %120 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local signext i8 @toupper(i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @kvp_get_ip_info(i32, i8*, i32, %struct.hv_kvp_ipaddr_value*, i32) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
