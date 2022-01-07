; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_inode.c_isofs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_inode.c_isofs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.isofs_sb_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c",norock\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c",nojoliet\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c",cruft\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c",hide\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c",nocompress\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c",overriderockperm\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c",showassoc\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c",utf8\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c",check=%c\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c",map=%c\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c",session=%u\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c",sbsector=%u\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c",blocksize=%lu\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@ISOFS_INVALID_MODE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c",dmode=%o\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c",fmode=%o\00", align 1
@CONFIG_NLS_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @isofs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isofs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.isofs_sb_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call %struct.isofs_sb_info* @ISOFS_SB(%struct.TYPE_4__* %8)
  store %struct.isofs_sb_info* %9, %struct.isofs_sb_info** %5, align 8
  %10 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %10, i32 0, i32 18
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = call i32 @seq_puts(%struct.seq_file* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = call i32 @seq_puts(%struct.seq_file* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %28 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %27, i32 0, i32 16
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 @seq_puts(%struct.seq_file* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %36 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %35, i32 0, i32 15
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = call i32 @seq_puts(%struct.seq_file* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %44 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %43, i32 0, i32 14
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = call i32 @seq_puts(%struct.seq_file* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %51, i32 0, i32 13
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 @seq_puts(%struct.seq_file* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %60 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %59, i32 0, i32 12
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = call i32 @seq_puts(%struct.seq_file* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %68 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %67, i32 0, i32 11
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = call i32 @seq_puts(%struct.seq_file* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %76 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %82 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %87 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %93 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %98 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 255
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %104 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = call i32 @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %110 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %115 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %116 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %113, %108
  %120 = load %struct.dentry*, %struct.dentry** %4, align 8
  %121 = getelementptr inbounds %struct.dentry, %struct.dentry* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 1024
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %128 = load %struct.dentry*, %struct.dentry** %4, align 8
  %129 = getelementptr inbounds %struct.dentry, %struct.dentry* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @seq_printf(%struct.seq_file* %127, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %126, %119
  %135 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %136 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %135, i32 0, i32 10
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %141 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %142 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %143)
  %145 = call i32 @seq_printf(%struct.seq_file* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %139, %134
  %147 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %148 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %147, i32 0, i32 8
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %153 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %154 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %155)
  %157 = call i32 @seq_printf(%struct.seq_file* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %160 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @ISOFS_INVALID_MODE, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %166 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %167 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @seq_printf(%struct.seq_file* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %164, %158
  %171 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %172 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ISOFS_INVALID_MODE, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %178 = load %struct.isofs_sb_info*, %struct.isofs_sb_info** %5, align 8
  %179 = getelementptr inbounds %struct.isofs_sb_info, %struct.isofs_sb_info* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @seq_printf(%struct.seq_file* %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %176, %170
  ret i32 0
}

declare dso_local %struct.isofs_sb_info* @ISOFS_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @from_kgid_munged(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
