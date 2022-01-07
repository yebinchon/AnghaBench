; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_get_connections.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_get_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }

@AC_CLIST_LONG = common dso_local global i32 0, align 4
@AC_CLIST_LENGTH = common dso_local global i32 0, align 4
@AC_VERB_GET_CONNECT_LIST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid CONNECT_LIST verb %x[%i]:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid dep_range_val %x:%x\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_get_connections(%struct.hdac_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %19, align 4
  %23 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @get_num_conns(%struct.hdac_device* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %192

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @AC_CLIST_LONG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 16, i32* %15, align 4
  store i32 2, i32* %16, align 4
  br label %36

35:                                               ; preds = %29
  store i32 8, i32* %15, align 4
  store i32 4, i32* %16, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @AC_CLIST_LENGTH, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %15, align 4
  %41 = sub i32 %40, 1
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %192

47:                                               ; preds = %36
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @AC_VERB_GET_CONNECT_LIST, align 4
  %54 = call i32 @snd_hdac_read(%struct.hdac_device* %51, i32 %52, i32 %53, i32 0, i32* %10)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %5, align 4
  br label %192

59:                                               ; preds = %50
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %17, align 4
  %65 = and i32 %63, %64
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %59
  store i32 1, i32* %5, align 4
  br label %192

69:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %187, %69
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %190

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %16, align 4
  %77 = urem i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @AC_VERB_GET_CONNECT_LIST, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @snd_hdac_read(%struct.hdac_device* %80, i32 %81, i32 %82, i32 %83, i32* %10)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %192

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %15, align 4
  %94 = sub i32 %93, 1
  %95 = shl i32 1, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %17, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %21, align 4
  %104 = load i32, i32* %21, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %91
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %112 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @dev_dbg(i32* %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114, i32 %115)
  store i32 0, i32* %5, align 4
  br label %192

117:                                              ; preds = %106, %91
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %10, align 4
  %120 = lshr i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %20, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %166

123:                                              ; preds = %117
  %124 = load i32, i32* %18, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %21, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126, %123
  %131 = load %struct.hdac_device*, %struct.hdac_device** %6, align 8
  %132 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %131, i32 0, i32 0
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %21, align 4
  %135 = call i32 @dev_warn(i32* %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %134)
  br label %187

136:                                              ; preds = %126
  %137 = load i32, i32* %18, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %22, align 4
  br label %139

139:                                              ; preds = %162, %136
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load i32*, i32** %8, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* @ENOSPC, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %192

153:                                              ; preds = %146
  %154 = load i32, i32* %22, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  br label %159

159:                                              ; preds = %153, %143
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %22, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %22, align 4
  br label %139

165:                                              ; preds = %139
  br label %185

166:                                              ; preds = %117
  %167 = load i32*, i32** %8, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %182

169:                                              ; preds = %166
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp sge i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* @ENOSPC, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %5, align 4
  br label %192

176:                                              ; preds = %169
  %177 = load i32, i32* %21, align 4
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %177, i32* %181, align 4
  br label %182

182:                                              ; preds = %176, %166
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %182, %165
  %186 = load i32, i32* %21, align 4
  store i32 %186, i32* %18, align 4
  br label %187

187:                                              ; preds = %185, %130
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  br label %70

190:                                              ; preds = %70
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %190, %173, %150, %110, %87, %68, %57, %46, %28
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local i32 @get_num_conns(%struct.hdac_device*, i32) #1

declare dso_local i32 @snd_hdac_read(%struct.hdac_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
