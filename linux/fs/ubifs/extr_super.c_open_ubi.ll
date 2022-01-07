; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_open_ubi.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_open_ubi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_volume_desc* (i8*, i32)* @open_ubi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_volume_desc* @open_ubi(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_volume_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_volume_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %18)
  store %struct.ubi_volume_desc* %19, %struct.ubi_volume_desc** %3, align 8
  br label %150

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.ubi_volume_desc* @ubi_open_volume_path(i8* %21, i32 %22)
  store %struct.ubi_volume_desc* %23, %struct.ubi_volume_desc** %6, align 8
  %24 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %6, align 8
  %25 = call i32 @IS_ERR(%struct.ubi_volume_desc* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %6, align 8
  store %struct.ubi_volume_desc* %28, %struct.ubi_volume_desc** %3, align 8
  br label %150

29:                                               ; preds = %20
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 117
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 98
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 105
  br i1 %46, label %47, label %51

47:                                               ; preds = %41, %35, %29
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %49)
  store %struct.ubi_volume_desc* %50, %struct.ubi_volume_desc** %3, align 8
  br label %150

51:                                               ; preds = %41
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 58
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 33
  br i1 %62, label %63, label %74

63:                                               ; preds = %57, %51
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = load i32, i32* %5, align 4
  %73 = call %struct.ubi_volume_desc* @ubi_open_volume_nm(i32 0, i8* %71, i32 %72)
  store %struct.ubi_volume_desc* %73, %struct.ubi_volume_desc** %3, align 8
  br label %150

74:                                               ; preds = %63, %57
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isdigit(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %82)
  store %struct.ubi_volume_desc* %83, %struct.ubi_volume_desc** %3, align 8
  br label %150

84:                                               ; preds = %74
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  %87 = call i32 @simple_strtoul(i8* %86, i8** %9, i32 0)
  store i32 %87, i32* %7, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call %struct.ubi_volume_desc* @ubi_open_volume(i32 0, i32 %93, i32 %94)
  store %struct.ubi_volume_desc* %95, %struct.ubi_volume_desc** %3, align 8
  br label %150

96:                                               ; preds = %84
  %97 = load i8*, i8** %9, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 95
  br i1 %100, label %101, label %124

101:                                              ; preds = %96
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = call i64 @isdigit(i8 signext %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i32 @simple_strtoul(i8* %109, i8** %9, i32 0)
  store i32 %110, i32* %8, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  %118 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %117)
  store %struct.ubi_volume_desc* %118, %struct.ubi_volume_desc** %3, align 8
  br label %150

119:                                              ; preds = %107
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call %struct.ubi_volume_desc* @ubi_open_volume(i32 %120, i32 %121, i32 %122)
  store %struct.ubi_volume_desc* %123, %struct.ubi_volume_desc** %3, align 8
  br label %150

124:                                              ; preds = %101, %96
  %125 = load i8*, i8** %9, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 58
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load i8*, i8** %9, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 33
  br i1 %133, label %134, label %146

134:                                              ; preds = %129, %124
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i32, i32* %7, align 4
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %9, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call %struct.ubi_volume_desc* @ubi_open_volume_nm(i32 %141, i8* %143, i32 %144)
  store %struct.ubi_volume_desc* %145, %struct.ubi_volume_desc** %3, align 8
  br label %150

146:                                              ; preds = %134, %129
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  %149 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %148)
  store %struct.ubi_volume_desc* %149, %struct.ubi_volume_desc** %3, align 8
  br label %150

150:                                              ; preds = %146, %140, %119, %115, %92, %80, %69, %47, %27, %16
  %151 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  ret %struct.ubi_volume_desc* %151
}

declare dso_local %struct.ubi_volume_desc* @ERR_PTR(i32) #1

declare dso_local %struct.ubi_volume_desc* @ubi_open_volume_path(i8*, i32) #1

declare dso_local i32 @IS_ERR(%struct.ubi_volume_desc*) #1

declare dso_local %struct.ubi_volume_desc* @ubi_open_volume_nm(i32, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local %struct.ubi_volume_desc* @ubi_open_volume(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
