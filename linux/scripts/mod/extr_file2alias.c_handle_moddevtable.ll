; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_handle_moddevtable.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_handle_moddevtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devtable = type { i8*, i32, i32 }
%struct.module = type { i32 }
%struct.elf_info = type { i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@STT_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"__mod_\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"_device_table\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@SHT_NOBITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pnp\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pnp_card\00", align 1
@devtable = common dso_local global %struct.devtable* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_moddevtable(%struct.module* %0, %struct.elf_info* %1, %struct.TYPE_6__* %2, i8* %3) #0 {
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.elf_info*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.devtable*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.elf_info* %1, %struct.elf_info** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %10, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = call i64 @get_secindex(%struct.elf_info* %21, %struct.TYPE_6__* %22)
  %24 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %25 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %4
  br label %210

29:                                               ; preds = %20
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ELF_ST_TYPE(i32 %32)
  %34 = load i64, i64* @STT_OBJECT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %210

37:                                               ; preds = %29
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %40 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %210

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @strlen(i8* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %210

54:                                               ; preds = %43
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %60 = sext i32 %59 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %210

66:                                               ; preds = %54
  %67 = load i8*, i8** %11, align 8
  %68 = call i8* @strstr(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %210

72:                                               ; preds = %66
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %13, align 4
  %79 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %80 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = call i64 @get_secindex(%struct.elf_info* %82, %struct.TYPE_6__* %83)
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SHT_NOBITS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %72
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @calloc(i32 1, i32 %94)
  store i8* %95, i8** %10, align 8
  %96 = load i8*, i8** %10, align 8
  store i8* %96, i8** %9, align 8
  br label %118

97:                                               ; preds = %72
  %98 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %99 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %103 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = call i64 @get_secindex(%struct.elf_info* %105, %struct.TYPE_6__* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr i8, i8* %101, i64 %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr i8, i8* %112, i64 %116
  store i8* %117, i8** %9, align 8
  br label %118

118:                                              ; preds = %97, %91
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i64 @sym_is(i8* %119, i32 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i8*, i8** %9, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.module*, %struct.module** %5, align 8
  %129 = call i32 @do_usb_table(i8* %124, i32 %127, %struct.module* %128)
  br label %130

130:                                              ; preds = %123, %118
  %131 = load i8*, i8** %11, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i64 @sym_is(i8* %131, i32 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i8*, i8** %9, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.module*, %struct.module** %5, align 8
  %141 = call i32 @do_of_table(i8* %136, i32 %139, %struct.module* %140)
  br label %207

142:                                              ; preds = %130
  %143 = load i8*, i8** %11, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i64 @sym_is(i8* %143, i32 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load i8*, i8** %9, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.module*, %struct.module** %5, align 8
  %153 = call i32 @do_pnp_device_entry(i8* %148, i32 %151, %struct.module* %152)
  br label %206

154:                                              ; preds = %142
  %155 = load i8*, i8** %11, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i64 @sym_is(i8* %155, i32 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i8*, i8** %9, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.module*, %struct.module** %5, align 8
  %165 = call i32 @do_pnp_card_entries(i8* %160, i32 %163, %struct.module* %164)
  br label %205

166:                                              ; preds = %154
  store i32 0, i32* %14, align 4
  br label %167

167:                                              ; preds = %201, %166
  %168 = load i32, i32* %14, align 4
  %169 = load %struct.devtable*, %struct.devtable** @devtable, align 8
  %170 = call i32 @ARRAY_SIZE(%struct.devtable* %169)
  %171 = icmp slt i32 %168, %170
  br i1 %171, label %172, label %204

172:                                              ; preds = %167
  %173 = load %struct.devtable*, %struct.devtable** @devtable, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.devtable, %struct.devtable* %173, i64 %175
  store %struct.devtable* %176, %struct.devtable** %15, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.devtable*, %struct.devtable** %15, align 8
  %180 = getelementptr inbounds %struct.devtable, %struct.devtable* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @sym_is(i8* %177, i32 %178, i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %172
  %185 = load i8*, i8** %9, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.devtable*, %struct.devtable** %15, align 8
  %190 = getelementptr inbounds %struct.devtable, %struct.devtable* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.devtable*, %struct.devtable** %15, align 8
  %193 = getelementptr inbounds %struct.devtable, %struct.devtable* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.devtable*, %struct.devtable** %15, align 8
  %196 = getelementptr inbounds %struct.devtable, %struct.devtable* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.module*, %struct.module** %5, align 8
  %199 = call i32 @do_table(i8* %185, i32 %188, i32 %191, i8* %194, i32 %197, %struct.module* %198)
  br label %204

200:                                              ; preds = %172
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %167

204:                                              ; preds = %184, %167
  br label %205

205:                                              ; preds = %204, %159
  br label %206

206:                                              ; preds = %205, %147
  br label %207

207:                                              ; preds = %206, %135
  %208 = load i8*, i8** %10, align 8
  %209 = call i32 @free(i8* %208)
  br label %210

210:                                              ; preds = %207, %71, %65, %53, %42, %36, %28
  ret void
}

declare dso_local i64 @get_secindex(%struct.elf_info*, %struct.TYPE_6__*) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @sym_is(i8*, i32, i8*) #1

declare dso_local i32 @do_usb_table(i8*, i32, %struct.module*) #1

declare dso_local i32 @do_of_table(i8*, i32, %struct.module*) #1

declare dso_local i32 @do_pnp_device_entry(i8*, i32, %struct.module*) #1

declare dso_local i32 @do_pnp_card_entries(i8*, i32, %struct.module*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.devtable*) #1

declare dso_local i32 @do_table(i8*, i32, i32, i8*, i32, %struct.module*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
