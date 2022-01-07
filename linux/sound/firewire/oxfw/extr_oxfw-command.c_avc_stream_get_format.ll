; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-command.c_avc_stream_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-command.c_avc_stream_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_stream_get_format(%struct.fw_unit* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.fw_unit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 192, i32* %13, align 4
  br label %19

18:                                               ; preds = %6
  store i32 193, i32* %13, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32*, i32** %10, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 1, i32* %21, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 255, i32* %23, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 191, i32* %25, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 255, %36
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  store i32 255, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 9
  store i32 255, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = and i32 255, %44
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 10
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 11
  store i32 255, i32* %49, align 4
  %50 = load %struct.fw_unit*, %struct.fw_unit** %7, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @BIT(i32 1)
  %56 = call i32 @BIT(i32 2)
  %57 = or i32 %55, %56
  %58 = call i32 @BIT(i32 3)
  %59 = or i32 %57, %58
  %60 = call i32 @BIT(i32 4)
  %61 = or i32 %59, %60
  %62 = call i32 @BIT(i32 5)
  %63 = or i32 %61, %62
  %64 = call i32 @BIT(i32 6)
  %65 = or i32 %63, %64
  %66 = call i32 @BIT(i32 7)
  %67 = or i32 %65, %66
  %68 = call i32 @fcp_avc_transaction(%struct.fw_unit* %50, i32* %51, i32 12, i32* %52, i32 %54, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %19
  br label %119

72:                                               ; preds = %19
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 12
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %14, align 4
  br label %118

78:                                               ; preds = %72
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @ENOSYS, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %14, align 4
  br label %117

86:                                               ; preds = %78
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %14, align 4
  br label %116

94:                                               ; preds = %86
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 11
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %14, align 4
  br label %115

102:                                              ; preds = %94
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %103, 193
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 10
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %111, %105, %102
  br label %115

115:                                              ; preds = %114, %99
  br label %116

116:                                              ; preds = %115, %91
  br label %117

117:                                              ; preds = %116, %83
  br label %118

118:                                              ; preds = %117, %75
  br label %119

119:                                              ; preds = %118, %71
  %120 = load i32, i32* %14, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %147

123:                                              ; preds = %119
  %124 = load i32, i32* %13, align 4
  %125 = icmp eq i32 %124, 192
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = load i32*, i32** %10, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 10
  %130 = load i32, i32* %14, align 4
  %131 = sub nsw i32 %130, 10
  %132 = call i32 @memmove(i32* %127, i32* %129, i32 %131)
  %133 = load i32, i32* %14, align 4
  %134 = sub nsw i32 %133, 10
  %135 = load i32*, i32** %11, align 8
  store i32 %134, i32* %135, align 4
  br label %146

136:                                              ; preds = %123
  %137 = load i32*, i32** %10, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 11
  %140 = load i32, i32* %14, align 4
  %141 = sub nsw i32 %140, 11
  %142 = call i32 @memmove(i32* %137, i32* %139, i32 %141)
  %143 = load i32, i32* %14, align 4
  %144 = sub nsw i32 %143, 11
  %145 = load i32*, i32** %11, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %136, %126
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %146, %122
  %148 = load i32, i32* %14, align 4
  ret i32 %148
}

declare dso_local i32 @fcp_avc_transaction(%struct.fw_unit*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
