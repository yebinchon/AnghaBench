; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_path.c_d_namespace_path.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_path.c_d_namespace_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.path = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@PATH_IS_DIR = common dso_local global i32 0, align 4
@aa_g_path_max = common dso_local global i32 0, align 4
@MNT_INTERNAL = common dso_local global i32 0, align 4
@PROC_SUPER_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"/sys/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@PATH_CHROOT_REL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_11__* null, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@PATH_MEDIATE_DELETED = common dso_local global i32 0, align 4
@PATH_DELEGATE_DELETED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i8*, i8**, i32, i8*)* @d_namespace_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_namespace_path(%struct.path* %0, i8* %1, i8** %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.path, align 8
  store %struct.path* %0, %struct.path** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @PATH_IS_DIR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @aa_g_path_max, align 4
  %25 = load i32, i32* %15, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %16, align 4
  %27 = load %struct.path*, %struct.path** %7, align 8
  %28 = getelementptr inbounds %struct.path, %struct.path* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MNT_INTERNAL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %5
  %36 = load %struct.path*, %struct.path** %7, align 8
  %37 = getelementptr inbounds %struct.path, %struct.path* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i8* @dentry_path(%struct.TYPE_10__* %38, i8* %39, i32 %40)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i8**, i8*** %9, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load i8*, i8** %8, align 8
  %49 = load i8**, i8*** %9, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %6, align 4
  br label %218

52:                                               ; preds = %35
  %53 = load %struct.path*, %struct.path** %7, align 8
  %54 = getelementptr inbounds %struct.path, %struct.path* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PROC_SUPER_MAGIC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %52
  %63 = load i8**, i8*** %9, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i8**, i8*** %9, align 8
  %69 = load i8**, i8*** %9, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @prepend(i8** %68, i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  store i32 %76, i32* %13, align 4
  br label %189

77:                                               ; preds = %62, %52
  %78 = load %struct.path*, %struct.path** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8**, i8*** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @disconnect(%struct.path* %78, i8* %79, i8** %80, i32 %81, i8* %82)
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %77
  br label %189

85:                                               ; preds = %5
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @PATH_CHROOT_REL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @get_fs_root(i32 %93, %struct.path* %17)
  %95 = load %struct.path*, %struct.path** %7, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i8* @__d_path(%struct.path* %95, %struct.path* %17, i8* %96, i32 %97)
  store i8* %98, i8** %12, align 8
  %99 = call i32 @path_put(%struct.path* %17)
  br label %112

100:                                              ; preds = %85
  %101 = load %struct.path*, %struct.path** %7, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %16, align 4
  %104 = call i8* @d_absolute_path(%struct.path* %101, i8* %102, i32 %103)
  store i8* %104, i8** %12, align 8
  %105 = load %struct.path*, %struct.path** %7, align 8
  %106 = getelementptr inbounds %struct.path, %struct.path* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = call i32 @our_mnt(%struct.TYPE_9__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %110, %100
  br label %112

112:                                              ; preds = %111, %90
  %113 = load i8*, i8** %12, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i8*, i8** %12, align 8
  %117 = call i64 @IS_ERR(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %115, %112
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @PTR_ERR(i8* %120)
  %122 = load i32, i32* @ENAMETOOLONG, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32, i32* @ENAMETOOLONG, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %13, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = load i8**, i8*** %9, align 8
  store i8* %128, i8** %129, align 8
  br label %189

130:                                              ; preds = %119
  store i32 0, i32* %14, align 4
  %131 = load %struct.path*, %struct.path** %7, align 8
  %132 = getelementptr inbounds %struct.path, %struct.path* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %16, align 4
  %136 = call i8* @dentry_path_raw(%struct.TYPE_10__* %133, i8* %134, i32 %135)
  store i8* %136, i8** %12, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = call i64 @IS_ERR(i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %130
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 @PTR_ERR(i8* %141)
  store i32 %142, i32* %13, align 4
  %143 = load i8*, i8** %8, align 8
  %144 = load i8**, i8*** %9, align 8
  store i8* %143, i8** %144, align 8
  br label %189

145:                                              ; preds = %130
  br label %154

146:                                              ; preds = %115
  %147 = load %struct.path*, %struct.path** %7, align 8
  %148 = getelementptr inbounds %struct.path, %struct.path* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = call i32 @our_mnt(%struct.TYPE_9__* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %152, %146
  br label %154

154:                                              ; preds = %153, %145
  %155 = load i8*, i8** %12, align 8
  %156 = load i8**, i8*** %9, align 8
  store i8* %155, i8** %156, align 8
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %154
  %160 = load %struct.path*, %struct.path** %7, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i8**, i8*** %9, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i8*, i8** %11, align 8
  %165 = call i32 @disconnect(%struct.path* %160, i8* %161, i8** %162, i32 %163, i8* %164)
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %159, %154
  %167 = load %struct.path*, %struct.path** %7, align 8
  %168 = getelementptr inbounds %struct.path, %struct.path* %167, i32 0, i32 0
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = call i64 @d_unlinked(%struct.TYPE_10__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %166
  %173 = load %struct.path*, %struct.path** %7, align 8
  %174 = getelementptr inbounds %struct.path, %struct.path* %173, i32 0, i32 0
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = call i64 @d_is_positive(%struct.TYPE_10__* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %172
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @PATH_MEDIATE_DELETED, align 4
  %181 = load i32, i32* @PATH_DELEGATE_DELETED, align 4
  %182 = or i32 %180, %181
  %183 = and i32 %179, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %178
  %186 = load i32, i32* @ENOENT, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %13, align 4
  br label %189

188:                                              ; preds = %178, %172, %166
  br label %189

189:                                              ; preds = %188, %185, %140, %125, %84, %67
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %216, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %216

195:                                              ; preds = %192
  %196 = load i8**, i8*** %9, align 8
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %195
  %203 = load i8**, i8*** %9, align 8
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 47
  br i1 %208, label %209, label %216

209:                                              ; preds = %202, %195
  %210 = load i8*, i8** %8, align 8
  %211 = load i32, i32* @aa_g_path_max, align 4
  %212 = sub nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  %215 = call i32 @strcpy(i8* %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %216

216:                                              ; preds = %209, %202, %192, %189
  %217 = load i32, i32* %13, align 4
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %216, %47
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local i8* @dentry_path(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @prepend(i8**, i32, i8*, i32) #1

declare dso_local i32 @disconnect(%struct.path*, i8*, i8**, i32, i8*) #1

declare dso_local i32 @get_fs_root(i32, %struct.path*) #1

declare dso_local i8* @__d_path(%struct.path*, %struct.path*, i8*, i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i8* @d_absolute_path(%struct.path*, i8*, i32) #1

declare dso_local i32 @our_mnt(%struct.TYPE_9__*) #1

declare dso_local i8* @dentry_path_raw(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @d_unlinked(%struct.TYPE_10__*) #1

declare dso_local i64 @d_is_positive(%struct.TYPE_10__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
