; ModuleID = '/home/carl/AnghaBench/linux/init/extr_do_mounts.c_name_to_dev_t.c'
source_filename = "/home/carl/AnghaBench/linux/init/extr_do_mounts.c_name_to_dev_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%u:%u%c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%u:%u:%u:%c\00", align 1
@Root_NFS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@Root_RAM0 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@block_class = common dso_local global i32 0, align 4
@match_dev_by_label = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @name_to_dev_t(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strncmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32* %9, i8* %11)
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i8* %11)
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %38

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @MKDEV(i32 %24, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @MAJOR(i64 %28)
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @MINOR(i64 %33)
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %23
  br label %161

37:                                               ; preds = %31
  br label %47

38:                                               ; preds = %19
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @simple_strtoul(i8* %39, i8** %5, i32 16)
  %41 = call i64 @new_decode_dev(i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %161

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %37
  br label %162

48:                                               ; preds = %1
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 5
  store i8* %50, i8** %3, align 8
  %51 = load i64, i64* @Root_NFS, align 8
  store i64 %51, i64* %6, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %162

56:                                               ; preds = %48
  %57 = load i64, i64* @Root_RAM0, align 8
  store i64 %57, i64* %6, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %162

62:                                               ; preds = %56
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = icmp sgt i32 %64, 31
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %161

67:                                               ; preds = %62
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @strcpy(i8* %68, i8* %69)
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %84, %67
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 47
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  store i8 33, i8* %82, align 1
  br label %83

83:                                               ; preds = %81, %76
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  br label %72

87:                                               ; preds = %72
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %89 = call i64 @blk_lookup_devt(i8* %88, i32 0)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %162

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %97 = icmp ugt i8* %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @isdigit(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %98, %94
  %105 = phi i1 [ false, %94 ], [ %103, %98 ]
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 -1
  store i8* %108, i8** %5, align 8
  br label %94

109:                                              ; preds = %104
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %112 = icmp eq i8* %110, %111
  br i1 %112, label %122, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %5, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i8*, i8** %5, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 48
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %113, %109
  br label %161

123:                                              ; preds = %117
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @simple_strtoul(i8* %124, i8** null, i32 10)
  store i32 %125, i32* %7, align 4
  %126 = load i8*, i8** %5, align 8
  store i8 0, i8* %126, align 1
  %127 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %128 = load i32, i32* %7, align 4
  %129 = call i64 @blk_lookup_devt(i8* %127, i32 %128)
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %6, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %162

133:                                              ; preds = %123
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  %137 = icmp ult i8* %134, %136
  br i1 %137, label %150, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 -2
  %141 = load i8, i8* %140, align 1
  %142 = call i64 @isdigit(i8 signext %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 -1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 112
  br i1 %149, label %150, label %151

150:                                              ; preds = %144, %138, %133
  br label %161

151:                                              ; preds = %144
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 -1
  store i8 0, i8* %153, align 1
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %155 = load i32, i32* %7, align 4
  %156 = call i64 @blk_lookup_devt(i8* %154, i32 %155)
  store i64 %156, i64* %6, align 8
  %157 = load i64, i64* %6, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %162

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160, %150, %122, %66, %45, %36
  store i64 0, i64* %2, align 8
  br label %164

162:                                              ; preds = %159, %132, %92, %61, %55, %47
  %163 = load i64, i64* %6, align 8
  store i64 %163, i64* %2, align 8
  br label %164

164:                                              ; preds = %162, %161
  %165 = load i64, i64* %2, align 8
  ret i64 %165
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i64) #1

declare dso_local i32 @MINOR(i64) #1

declare dso_local i64 @new_decode_dev(i32) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @blk_lookup_devt(i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
