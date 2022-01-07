; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dump_lpt_leb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dump_lpt_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ubifs_nnode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"(pid %d) start dumping LEB %d\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot allocate memory to dump LPT\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"LEB %d:%d, pad %d bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"LEB %d:%d, free %d bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"LEB %d:%d, pnode num %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"LEB %d:%d, pnode\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"LEB %d:%d, nnode num %d, \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"LEB %d:%d, nnode, \00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to unpack_node, error %d\0A\00", align 1
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"LEB %d:%d, ltab\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"LEB %d:%d, lsave len\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"LPT node type %d not recognized\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"(pid %d) finish dumping LEB %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, i32)* @dump_lpt_leb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_lpt_leb(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_nnode, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = load i32, i32* @PAGE_KERNEL, align 4
  %29 = call i8* @__vmalloc(i32 %26, i32 %27, i32 %28)
  store i8* %29, i8** %12, align 8
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %203

35:                                               ; preds = %2
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ubifs_leb_read(%struct.ubifs_info* %36, i32 %37, i8* %38, i32 0, i32 %41, i32 1)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %200

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %65, %186
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @is_a_node(%struct.ubifs_info* %53, i8* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %47
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @get_pad_len(%struct.ubifs_info* %59, i8* %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr i8, i8* %71, i64 %72
  store i8* %73, i8** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %47

77:                                               ; preds = %58
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %77
  br label %194

86:                                               ; preds = %47
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @get_lpt_node_type(%struct.ubifs_info* %87, i8* %88, i32* %8)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  switch i32 %90, label %182 [
    i32 128, label %91
    i32 129, label %109
    i32 130, label %168
    i32 131, label %175
  ]

91:                                               ; preds = %86
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %93 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %9, align 4
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %96 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  br label %108

104:                                              ; preds = %91
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %99
  br label %186

109:                                              ; preds = %86
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %111 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %9, align 4
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %114 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %118, i32 %119, i32 %120)
  br label %126

122:                                              ; preds = %109
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @ubifs_unpack_nnode(%struct.ubifs_info* %127, i8* %128, %struct.ubifs_nnode* %15)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  br label %186

135:                                              ; preds = %126
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %163, %135
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %166

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %15, i32 0, i32 0
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %15, i32 0, i32 0
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %147, i32 %154)
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp ne i32 %156, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %140
  %161 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %140
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %136

166:                                              ; preds = %136
  %167 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %186

168:                                              ; preds = %86
  %169 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %170 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* %10, align 4
  %174 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %172, i32 %173)
  br label %186

175:                                              ; preds = %86
  %176 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %177 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %179, i32 %180)
  br label %186

182:                                              ; preds = %86
  %183 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %184)
  br label %200

186:                                              ; preds = %175, %168, %166, %132, %108
  %187 = load i32, i32* %9, align 4
  %188 = load i8*, i8** %12, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr i8, i8* %188, i64 %189
  store i8* %190, i8** %12, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %6, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %6, align 4
  br label %47

194:                                              ; preds = %85
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %4, align 4
  %199 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %194, %182, %45
  %201 = load i8*, i8** %11, align 8
  %202 = call i32 @vfree(i8* %201)
  br label %203

203:                                              ; preds = %200, %32
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i8* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, ...) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @is_a_node(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @get_pad_len(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @get_lpt_node_type(%struct.ubifs_info*, i8*, i32*) #1

declare dso_local i32 @ubifs_unpack_nnode(%struct.ubifs_info*, i8*, %struct.ubifs_nnode*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
