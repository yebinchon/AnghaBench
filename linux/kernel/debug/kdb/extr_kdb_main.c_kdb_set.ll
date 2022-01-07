; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_set.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KDB_ARGCOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"KDBDEBUG\00", align 1
@KDB_DEBUG_FLAG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"kdb: illegal debug flags '%s'\0A\00", align 1
@kdb_flags = common dso_local global i32 0, align 4
@KDB_DEBUG_FLAG_SHIFT = common dso_local global i32 0, align 4
@KDB_ENVBUFFULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@__nenv = common dso_local global i32 0, align 4
@__env = common dso_local global i8** null, align 8
@KDB_ENVFULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdb_set(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 3
  %17 = load i8*, i8** %16, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %14, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @KDB_ARGCOUNT, align 4
  store i32 %26, i32* %3, align 4
  br label %178

27:                                               ; preds = %22
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @simple_strtoul(i8* %36, i8** %11, i32 0)
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @KDB_DEBUG_FLAG_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43, %33
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @kdb_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  store i32 0, i32* %3, align 4
  br label %178

54:                                               ; preds = %43
  %55 = load i32, i32* @kdb_flags, align 4
  %56 = load i32, i32* @KDB_DEBUG_FLAG_MASK, align 4
  %57 = load i32, i32* @KDB_DEBUG_FLAG_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %55, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @KDB_DEBUG_FLAG_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %60, %63
  store i32 %64, i32* @kdb_flags, align 4
  store i32 0, i32* %3, align 4
  br label %178

65:                                               ; preds = %27
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strlen(i8* %68)
  store i64 %69, i64* %8, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 2
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strlen(i8* %72)
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %74, %75
  %77 = add i64 %76, 2
  %78 = call i8* @kdballocenv(i64 %77)
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %65
  %82 = load i32, i32* @KDB_ENVBUFFULL, align 4
  store i32 %82, i32* %3, align 4
  br label %178

83:                                               ; preds = %65
  %84 = load i8*, i8** %7, align 8
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @sprintf(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %87, i8* %90)
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %93, %94
  %96 = add i64 %95, 1
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  store i8 0, i8* %97, align 1
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %150, %83
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @__nenv, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %153

102:                                              ; preds = %98
  %103 = load i8**, i8*** @__env, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %149

109:                                              ; preds = %102
  %110 = load i8**, i8*** @__env, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load i8**, i8*** %5, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call i64 @strncmp(i8* %114, i8* %117, i64 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %149

121:                                              ; preds = %109
  %122 = load i8**, i8*** @__env, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %121
  %133 = load i8**, i8*** @__env, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 61
  br i1 %142, label %143, label %149

143:                                              ; preds = %132, %121
  %144 = load i8*, i8** %7, align 8
  %145 = load i8**, i8*** @__env, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* %144, i8** %148, align 8
  store i32 0, i32* %3, align 4
  br label %178

149:                                              ; preds = %132, %109, %102
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %98

153:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %173, %153
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @__nenv, align 4
  %157 = sub nsw i32 %156, 1
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = load i8**, i8*** @__env, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load i8*, i8** %7, align 8
  %168 = load i8**, i8*** @__env, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  store i8* %167, i8** %171, align 8
  store i32 0, i32* %3, align 4
  br label %178

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %154

176:                                              ; preds = %154
  %177 = load i32, i32* @KDB_ENVFULL, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %166, %143, %81, %54, %49, %25
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @kdb_printf(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @kdballocenv(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
