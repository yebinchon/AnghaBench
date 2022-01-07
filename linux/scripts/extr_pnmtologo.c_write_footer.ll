; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_pnmtologo.c_write_footer.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_pnmtologo.c_write_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"const struct linux_logo %s __initconst = {\0A\00", align 1
@logoname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"\09.type\09\09= %s,\0A\00", align 1
@logo_types = common dso_local global i8** null, align 8
@logo_type = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"\09.width\09\09= %d,\0A\00", align 1
@logo_width = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"\09.height\09\09= %d,\0A\00", align 1
@logo_height = common dso_local global i32 0, align 4
@LINUX_LOGO_CLUT224 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"\09.clutsize\09= %d,\0A\00", align 1
@logo_clutsize = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"\09.clut\09\09= %s_clut,\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\09.data\09\09= %s_data\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@outputname = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_footer() #0 {
  %1 = load i32, i32* @out, align 4
  %2 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @out, align 4
  %4 = load i8*, i8** @logoname, align 8
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* @out, align 4
  %7 = load i8**, i8*** @logo_types, align 8
  %8 = load i64, i64* @logo_type, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @out, align 4
  %13 = load i32, i32* @logo_width, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @out, align 4
  %16 = load i32, i32* @logo_height, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %16)
  %18 = load i64, i64* @logo_type, align 8
  %19 = load i64, i64* @LINUX_LOGO_CLUT224, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %0
  %22 = load i32, i32* @out, align 4
  %23 = load i32, i32* @logo_clutsize, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @out, align 4
  %26 = load i8*, i8** @logoname, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %21, %0
  %29 = load i32, i32* @out, align 4
  %30 = load i8*, i8** @logoname, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @out, align 4
  %33 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* @outputname, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @out, align 4
  %38 = call i32 @fclose(i32 %37)
  br label %39

39:                                               ; preds = %36, %28
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
