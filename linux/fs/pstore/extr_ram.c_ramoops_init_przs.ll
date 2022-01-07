; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_init_przs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_init_przs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ramoops_context = type { i64, i64, i32, i32 }
%struct.persistent_ram_zone = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s record size == 0 (%zu / %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s record count == 0 (%zu / %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"no room for %s mem region (0x%zx@0x%llx) in (0x%lx@0x%llx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s zone size == 0\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"ramoops:%s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ramoops:%s(%d/%d)\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"failed to request %s mem region (0x%zx@0x%llx): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.device*, %struct.ramoops_context*, %struct.persistent_ram_zone***, i64*, i64, i64, i32*, i32, i32)* @ramoops_init_przs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramoops_init_przs(i8* %0, %struct.device* %1, %struct.ramoops_context* %2, %struct.persistent_ram_zone*** %3, i64* %4, i64 %5, i64 %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.ramoops_context*, align 8
  %15 = alloca %struct.persistent_ram_zone***, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.persistent_ram_zone**, align 8
  %26 = alloca i8*, align 8
  store i8* %0, i8** %12, align 8
  store %struct.device* %1, %struct.device** %13, align 8
  store %struct.ramoops_context* %2, %struct.ramoops_context** %14, align 8
  store %struct.persistent_ram_zone*** %3, %struct.persistent_ram_zone**** %15, align 8
  store i64* %4, i64** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %22, align 4
  %29 = load i64, i64* %17, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %10
  %32 = load i64, i64* %18, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %10
  %35 = load i32*, i32** %19, align 8
  store i32 0, i32* %35, align 4
  store i32 0, i32* %11, align 4
  br label %219

36:                                               ; preds = %31
  %37 = load i64, i64* %18, align 8
  %38 = icmp ult i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i32*, i32** %19, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %219

44:                                               ; preds = %39
  %45 = load i64, i64* %17, align 8
  %46 = load i32*, i32** %19, align 8
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  %49 = udiv i64 %45, %48
  store i64 %49, i64* %18, align 8
  %50 = load i64, i64* %18, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.device*, %struct.device** %13, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i32*, i32** %19, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %54, i64 %55, i32 %57)
  br label %216

59:                                               ; preds = %44
  br label %76

60:                                               ; preds = %36
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %18, align 8
  %63 = udiv i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %19, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %19, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.device*, %struct.device** %13, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %18, align 8
  %74 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %71, i64 %72, i64 %73)
  br label %216

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i64*, i64** %16, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %17, align 8
  %80 = add i64 %78, %79
  %81 = load %struct.ramoops_context*, %struct.ramoops_context** %14, align 8
  %82 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %80, %83
  %85 = load %struct.ramoops_context*, %struct.ramoops_context** %14, align 8
  %86 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ugt i64 %84, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %76
  %90 = load %struct.device*, %struct.device** %13, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64*, i64** %16, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ramoops_context*, %struct.ramoops_context** %14, align 8
  %96 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ramoops_context*, %struct.ramoops_context** %14, align 8
  %99 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %91, i64 %92, i64 %94, i64 %97, i64 %100)
  br label %216

102:                                              ; preds = %76
  %103 = load i64, i64* %17, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  %107 = udiv i64 %103, %106
  store i64 %107, i64* %24, align 8
  %108 = load i64, i64* %24, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %102
  %111 = load %struct.device*, %struct.device** %13, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %112)
  br label %216

114:                                              ; preds = %102
  %115 = load i32*, i32** %19, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call %struct.persistent_ram_zone** @kcalloc(i32 %116, i32 8, i32 %117)
  store %struct.persistent_ram_zone** %118, %struct.persistent_ram_zone*** %25, align 8
  %119 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %25, align 8
  %120 = icmp ne %struct.persistent_ram_zone** %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  br label %216

122:                                              ; preds = %114
  store i32 0, i32* %23, align 4
  br label %123

123:                                              ; preds = %210, %122
  %124 = load i32, i32* %23, align 4
  %125 = load i32*, i32** %19, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp ult i32 %124, %126
  br i1 %127, label %128, label %213

128:                                              ; preds = %123
  %129 = load i32*, i32** %19, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = load i8*, i8** %12, align 8
  %135 = call i8* (i32, i8*, i8*, ...) @kasprintf(i32 %133, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %134)
  store i8* %135, i8** %26, align 8
  br label %144

136:                                              ; preds = %128
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* %23, align 4
  %140 = load i32*, i32** %19, align 8
  %141 = load i32, i32* %140, align 4
  %142 = sub i32 %141, 1
  %143 = call i8* (i32, i8*, i8*, ...) @kasprintf(i32 %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %138, i32 %139, i32 %142)
  store i8* %143, i8** %26, align 8
  br label %144

144:                                              ; preds = %136, %132
  %145 = load i64*, i64** %16, align 8
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %24, align 8
  %148 = load i32, i32* %20, align 4
  %149 = load %struct.ramoops_context*, %struct.ramoops_context** %14, align 8
  %150 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %149, i32 0, i32 3
  %151 = load %struct.ramoops_context*, %struct.ramoops_context** %14, align 8
  %152 = getelementptr inbounds %struct.ramoops_context, %struct.ramoops_context* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %21, align 4
  %155 = load i8*, i8** %26, align 8
  %156 = call %struct.persistent_ram_zone* @persistent_ram_new(i64 %146, i64 %147, i32 %148, i32* %150, i32 %153, i32 %154, i8* %155)
  %157 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %25, align 8
  %158 = load i32, i32* %23, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %157, i64 %159
  store %struct.persistent_ram_zone* %156, %struct.persistent_ram_zone** %160, align 8
  %161 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %25, align 8
  %162 = load i32, i32* %23, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %161, i64 %163
  %165 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %164, align 8
  %166 = call i64 @IS_ERR(%struct.persistent_ram_zone* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %144
  %169 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %25, align 8
  %170 = load i32, i32* %23, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %169, i64 %171
  %173 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %172, align 8
  %174 = call i32 @PTR_ERR(%struct.persistent_ram_zone* %173)
  store i32 %174, i32* %22, align 4
  %175 = load %struct.device*, %struct.device** %13, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = load i64, i64* %18, align 8
  %178 = load i64*, i64** %16, align 8
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %22, align 4
  %181 = call i32 (%struct.device*, i8*, i8*, ...) @dev_err(%struct.device* %175, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %176, i64 %177, i64 %179, i32 %180)
  br label %182

182:                                              ; preds = %185, %168
  %183 = load i32, i32* %23, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load i32, i32* %23, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %23, align 4
  %188 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %25, align 8
  %189 = load i32, i32* %23, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %188, i64 %190
  %192 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %191, align 8
  %193 = call i32 @persistent_ram_free(%struct.persistent_ram_zone* %192)
  br label %182

194:                                              ; preds = %182
  %195 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %25, align 8
  %196 = call i32 @kfree(%struct.persistent_ram_zone** %195)
  br label %216

197:                                              ; preds = %144
  %198 = load i64, i64* %24, align 8
  %199 = load i64*, i64** %16, align 8
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, %198
  store i64 %201, i64* %199, align 8
  %202 = load i8*, i8** %12, align 8
  %203 = call i32 @pstore_name_to_type(i8* %202)
  %204 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %25, align 8
  %205 = load i32, i32* %23, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %204, i64 %206
  %208 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %207, align 8
  %209 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %208, i32 0, i32 0
  store i32 %203, i32* %209, align 4
  br label %210

210:                                              ; preds = %197
  %211 = load i32, i32* %23, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %23, align 4
  br label %123

213:                                              ; preds = %123
  %214 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %25, align 8
  %215 = load %struct.persistent_ram_zone***, %struct.persistent_ram_zone**** %15, align 8
  store %struct.persistent_ram_zone** %214, %struct.persistent_ram_zone*** %215, align 8
  store i32 0, i32* %11, align 4
  br label %219

216:                                              ; preds = %194, %121, %110, %89, %69, %52
  %217 = load i32*, i32** %19, align 8
  store i32 0, i32* %217, align 4
  %218 = load i32, i32* %22, align 4
  store i32 %218, i32* %11, align 4
  br label %219

219:                                              ; preds = %216, %213, %43, %34
  %220 = load i32, i32* %11, align 4
  ret i32 %220
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, ...) #1

declare dso_local %struct.persistent_ram_zone** @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*, ...) #1

declare dso_local %struct.persistent_ram_zone* @persistent_ram_new(i64, i64, i32, i32*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.persistent_ram_zone*) #1

declare dso_local i32 @PTR_ERR(%struct.persistent_ram_zone*) #1

declare dso_local i32 @persistent_ram_free(%struct.persistent_ram_zone*) #1

declare dso_local i32 @kfree(%struct.persistent_ram_zone**) #1

declare dso_local i32 @pstore_name_to_type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
