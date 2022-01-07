; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_pcmcia_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_pcmcia_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pcmcia_device_id = common dso_local global i32 0, align 4
@match_flags = common dso_local global i32 0, align 4
@manf_id = common dso_local global i32 0, align 4
@card_id = common dso_local global i32 0, align 4
@func_id = common dso_local global i32 0, align 4
@function = common dso_local global i32 0, align 4
@device_no = common dso_local global i32 0, align 4
@prod_id_hash = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"pcmcia:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@PCMCIA_DEV_ID_MATCH_MANF_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@PCMCIA_DEV_ID_MATCH_CARD_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@PCMCIA_DEV_ID_MATCH_FUNC_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@PCMCIA_DEV_ID_MATCH_FUNCTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@PCMCIA_DEV_ID_MATCH_DEVICE_NO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"pa\00", align 1
@PCMCIA_DEV_ID_MATCH_PROD_ID1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@PCMCIA_DEV_ID_MATCH_PROD_ID2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@PCMCIA_DEV_ID_MATCH_PROD_ID3 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@PCMCIA_DEV_ID_MATCH_PROD_ID4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_pcmcia_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pcmcia_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @pcmcia_device_id, align 4
  %10 = load i32, i32* @match_flags, align 4
  %11 = call i32 @DEF_FIELD(i8* %8, i32 %9, i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @pcmcia_device_id, align 4
  %14 = load i32, i32* @manf_id, align 4
  %15 = call i32 @DEF_FIELD(i8* %12, i32 %13, i32 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @pcmcia_device_id, align 4
  %18 = load i32, i32* @card_id, align 4
  %19 = call i32 @DEF_FIELD(i8* %16, i32 %17, i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @pcmcia_device_id, align 4
  %22 = load i32, i32* @func_id, align 4
  %23 = call i32 @DEF_FIELD(i8* %20, i32 %21, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @pcmcia_device_id, align 4
  %26 = load i32, i32* @function, align 4
  %27 = call i32 @DEF_FIELD(i8* %24, i32 %25, i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @pcmcia_device_id, align 4
  %30 = load i32, i32* @device_no, align 4
  %31 = call i32 @DEF_FIELD(i8* %28, i32 %29, i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @pcmcia_device_id, align 4
  %34 = load i32**, i32*** @prod_id_hash, align 8
  %35 = call i32 @DEF_FIELD_ADDR(i8* %32, i32 %33, i32** %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %52, %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32**, i32*** @prod_id_hash, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @TO_NATIVE(i32 %45)
  %47 = load i32**, i32*** @prod_id_hash, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %46, i32* %51, align 4
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @match_flags, align 4
  %60 = load i32, i32* @PCMCIA_DEV_ID_MATCH_MANF_ID, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @manf_id, align 4
  %63 = call i32 @ADD(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @match_flags, align 4
  %66 = load i32, i32* @PCMCIA_DEV_ID_MATCH_CARD_ID, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @card_id, align 4
  %69 = call i32 @ADD(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @match_flags, align 4
  %72 = load i32, i32* @PCMCIA_DEV_ID_MATCH_FUNC_ID, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @func_id, align 4
  %75 = call i32 @ADD(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* @match_flags, align 4
  %78 = load i32, i32* @PCMCIA_DEV_ID_MATCH_FUNCTION, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @function, align 4
  %81 = call i32 @ADD(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* @match_flags, align 4
  %84 = load i32, i32* @PCMCIA_DEV_ID_MATCH_DEVICE_NO, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @device_no, align 4
  %87 = call i32 @ADD(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* @match_flags, align 4
  %90 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID1, align 4
  %91 = and i32 %89, %90
  %92 = load i32**, i32*** @prod_id_hash, align 8
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ADD(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %95)
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @match_flags, align 4
  %99 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID2, align 4
  %100 = and i32 %98, %99
  %101 = load i32**, i32*** @prod_id_hash, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ADD(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %100, i32 %104)
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* @match_flags, align 4
  %108 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID3, align 4
  %109 = and i32 %107, %108
  %110 = load i32**, i32*** @prod_id_hash, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ADD(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %109, i32 %113)
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* @match_flags, align 4
  %117 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID4, align 4
  %118 = and i32 %116, %117
  %119 = load i32**, i32*** @prod_id_hash, align 8
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ADD(i8* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %118, i32 %122)
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @add_wildcard(i8* %124)
  ret i32 1
}

declare dso_local i32 @DEF_FIELD(i8*, i32, i32) #1

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, i32**) #1

declare dso_local i32 @TO_NATIVE(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i32) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
