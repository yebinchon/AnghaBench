; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_write_file.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_file.c_tomoyo_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i32 }

@TOMOYO_MAX_PATH_OPERATION = common dso_local global i64 0, align 8
@tomoyo_path_keyword = common dso_local global i32* null, align 8
@TOMOYO_MAX_PATH2_OPERATION = common dso_local global i64 0, align 8
@tomoyo_mac_keywords = common dso_local global i32* null, align 8
@tomoyo_pp2mac = common dso_local global i64* null, align 8
@TOMOYO_MAX_PATH_NUMBER_OPERATION = common dso_local global i64 0, align 8
@tomoyo_pn2mac = common dso_local global i64* null, align 8
@TOMOYO_MAX_MKDEV_OPERATION = common dso_local global i64 0, align 8
@tomoyo_pnnn2mac = common dso_local global i64* null, align 8
@TOMOYO_MAC_FILE_MOUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_write_file(%struct.tomoyo_acl_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_acl_param*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %8 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %7)
  store i8* %8, i8** %6, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @TOMOYO_MAX_PATH_OPERATION, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load i8*, i8** %6, align 8
  %15 = load i32*, i32** @tomoyo_path_keyword, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @tomoyo_permstr(i8* %14, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 1, %23
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %13
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %9

31:                                               ; preds = %9
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %37 = call i32 @tomoyo_update_path_acl(i32 %35, %struct.tomoyo_acl_param* %36)
  store i32 %37, i32* %2, align 4
  br label %151

38:                                               ; preds = %31
  store i64 0, i64* %5, align 8
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @TOMOYO_MAX_PATH2_OPERATION, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = load i32*, i32** @tomoyo_mac_keywords, align 8
  %46 = load i64*, i64** @tomoyo_pp2mac, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @tomoyo_permstr(i8* %44, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load i64, i64* %5, align 8
  %56 = trunc i64 %55 to i32
  %57 = shl i32 1, %56
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %43
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %39

64:                                               ; preds = %39
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %70 = call i32 @tomoyo_update_path2_acl(i32 %68, %struct.tomoyo_acl_param* %69)
  store i32 %70, i32* %2, align 4
  br label %151

71:                                               ; preds = %64
  store i64 0, i64* %5, align 8
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @TOMOYO_MAX_PATH_NUMBER_OPERATION, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = load i32*, i32** @tomoyo_mac_keywords, align 8
  %79 = load i64*, i64** @tomoyo_pn2mac, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @tomoyo_permstr(i8* %77, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load i64, i64* %5, align 8
  %89 = trunc i64 %88 to i32
  %90 = shl i32 1, %89
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %87, %76
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %5, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %5, align 8
  br label %72

97:                                               ; preds = %72
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %103 = call i32 @tomoyo_update_path_number_acl(i32 %101, %struct.tomoyo_acl_param* %102)
  store i32 %103, i32* %2, align 4
  br label %151

104:                                              ; preds = %97
  store i64 0, i64* %5, align 8
  br label %105

105:                                              ; preds = %127, %104
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @TOMOYO_MAX_MKDEV_OPERATION, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = load i32*, i32** @tomoyo_mac_keywords, align 8
  %112 = load i64*, i64** @tomoyo_pnnn2mac, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @tomoyo_permstr(i8* %110, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %109
  %121 = load i64, i64* %5, align 8
  %122 = trunc i64 %121 to i32
  %123 = shl i32 1, %122
  %124 = load i32, i32* %4, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %120, %109
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %5, align 8
  br label %105

130:                                              ; preds = %105
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %136 = call i32 @tomoyo_update_mkdev_acl(i32 %134, %struct.tomoyo_acl_param* %135)
  store i32 %136, i32* %2, align 4
  br label %151

137:                                              ; preds = %130
  %138 = load i8*, i8** %6, align 8
  %139 = load i32*, i32** @tomoyo_mac_keywords, align 8
  %140 = load i64, i64* @TOMOYO_MAC_FILE_MOUNT, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @tomoyo_permstr(i8* %138, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %147 = call i32 @tomoyo_update_mount_acl(%struct.tomoyo_acl_param* %146)
  store i32 %147, i32* %2, align 4
  br label %151

148:                                              ; preds = %137
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %145, %133, %100, %67, %34
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i8* @tomoyo_read_token(%struct.tomoyo_acl_param*) #1

declare dso_local i64 @tomoyo_permstr(i8*, i32) #1

declare dso_local i32 @tomoyo_update_path_acl(i32, %struct.tomoyo_acl_param*) #1

declare dso_local i32 @tomoyo_update_path2_acl(i32, %struct.tomoyo_acl_param*) #1

declare dso_local i32 @tomoyo_update_path_number_acl(i32, %struct.tomoyo_acl_param*) #1

declare dso_local i32 @tomoyo_update_mkdev_acl(i32, %struct.tomoyo_acl_param*) #1

declare dso_local i32 @tomoyo_update_mount_acl(%struct.tomoyo_acl_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
