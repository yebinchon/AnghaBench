; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_pnp_card_entries.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_pnp_card_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.module = type { i32, i32 }

@SIZE_pnp_card_device_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"pnp\00", align 1
@pnp_card_device_id = common dso_local global i32 0, align 4
@devs = common dso_local global %struct.TYPE_7__** null, align 8
@PNP_MAX_DEVICES = common dso_local global i32 0, align 4
@devs_dup = common dso_local global %struct.TYPE_6__** null, align 8
@PNP_ID_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MODULE_ALIAS(\22pnp:d%s*\22);\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"MODULE_ALIAS(\22acpi*:%s:*\22);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.module*)* @do_pnp_card_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pnp_card_entries(i8* %0, i64 %1, %struct.module* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  %19 = load i64, i64* @SIZE_pnp_card_device_id, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = udiv i64 %20, %21
  %23 = sub i64 %22, 1
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.module*, %struct.module** %6, align 8
  %26 = getelementptr inbounds %struct.module, %struct.module* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @device_id_check(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29, i8* %30)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %157, %3
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %160

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = mul i64 %39, %40
  %42 = getelementptr i8, i8* %37, i64 %41
  %43 = load i32, i32* @pnp_card_device_id, align 4
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @devs, align 8
  %45 = call i32 @DEF_FIELD_ADDR(i8* %42, i32 %43, %struct.TYPE_7__** %44)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %153, %36
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @PNP_MAX_DEVICES, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %156

50:                                               ; preds = %46
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @devs, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  br label %156

64:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %115, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ false, %65 ], [ %72, %69 ]
  br i1 %74, label %75, label %118

75:                                               ; preds = %73
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %7, align 8
  %80 = mul i64 %78, %79
  %81 = getelementptr i8, i8* %76, i64 %80
  %82 = load i32, i32* @pnp_card_device_id, align 4
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @devs, align 8
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devs_dup, align 8
  %85 = call i32 @DEF_FIELD_ADDR_VAR(i8* %81, i32 %82, %struct.TYPE_7__** %83, %struct.TYPE_6__** %84)
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %111, %75
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @PNP_MAX_DEVICES, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %86
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @devs_dup, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %15, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %90
  br label %114

104:                                              ; preds = %90
  %105 = load i8*, i8** %11, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = call i32 @strcmp(i8* %105, i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i32 1, i32* %14, align 4
  br label %114

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %86

114:                                              ; preds = %109, %103, %86
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %65

118:                                              ; preds = %73
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %152, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @PNP_ID_LEN, align 4
  %123 = zext i32 %122 to i64
  %124 = call i8* @llvm.stacksave()
  store i8* %124, i8** %16, align 8
  %125 = alloca i8, i64 %123, align 16
  store i64 %123, i64* %17, align 8
  %126 = load %struct.module*, %struct.module** %6, align 8
  %127 = getelementptr inbounds %struct.module, %struct.module* %126, i32 0, i32 0
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @buf_printf(i32* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %128)
  store i32 0, i32* %18, align 4
  br label %130

130:                                              ; preds = %144, %121
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp ult i64 %132, %123
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = load i8*, i8** %11, align 8
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = call signext i8 @toupper(i8 signext %139)
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %125, i64 %142
  store i8 %140, i8* %143, align 1
  br label %144

144:                                              ; preds = %134
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %130

147:                                              ; preds = %130
  %148 = load %struct.module*, %struct.module** %6, align 8
  %149 = getelementptr inbounds %struct.module, %struct.module* %148, i32 0, i32 0
  %150 = call i32 @buf_printf(i32* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %125)
  %151 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %151)
  br label %152

152:                                              ; preds = %147, %118
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %10, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %46

156:                                              ; preds = %63, %46
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %9, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %32

160:                                              ; preds = %32
  ret void
}

declare dso_local i32 @device_id_check(i32, i8*, i64, i64, i8*) #1

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @DEF_FIELD_ADDR_VAR(i8*, i32, %struct.TYPE_7__**, %struct.TYPE_6__**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @buf_printf(i32*, i8*, i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
